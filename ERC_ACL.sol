// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EHR {
    struct Patient {
        uint id;
        string name;
        uint age;
        string[] diseases;
        address createdBy;
    }

    struct Doctor {
        uint id;
        string name;
        string qualification;
        string workPlace;
        address createdBy;
    }

    struct Medicine {
        uint id;
        string name;
        string expiryDate;
        string dose;
        uint price;
    }

    mapping(uint => Patient) patients;
    mapping(uint => Doctor) doctors;
    mapping(uint => Medicine) medicines;
    mapping(uint => uint[]) patientMedicines;

    uint public patientCount;
    uint public doctorCount;
    uint public medicineCount;

    modifier onlyDoctor(uint _doctorId) {
        require(doctors[_doctorId].createdBy == msg.sender, "Only the registered doctor can perform this action");
        _;
    }

    modifier onlyPatient(uint _patientId) {
    require(patients[_patientId].createdBy == msg.sender, "Only the registered patient can perform this action");
            _;
        }

        function registerPatient(string memory _name, uint _age) public {
            patientCount++;
            patients[patientCount] = Patient(patientCount, _name, _age, new string[](0), msg.sender);
        }

        function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
            doctorCount++;
            doctors[doctorCount] = Doctor(doctorCount, _name, _qualification, _workPlace, msg.sender);
        }

        function addDisease(uint _patientId, string memory _disease) public onlyPatient(_patientId) {
            patients[_patientId].diseases.push(_disease);
        }

        function addMedicine(string memory _name, string memory _expiryDate, string memory _dose, uint _price) public {
            medicineCount++;
            medicines[medicineCount] = Medicine(medicineCount, _name, _expiryDate, _dose, _price);
        }

        function prescribeMedicine(uint _patientId, uint _medicineId) public onlyDoctor(_patientId) {
        patientMedicines[_patientId].push(_medicineId);
        }

        function updatePatientAge(uint _patientId, uint _newAge) public onlyPatient(_patientId) {
            patients[_patientId].age = _newAge;
        }

        function viewPatient(uint _patientId) public view returns (uint, string memory, uint, string[] memory) {
            require(patients[_patientId].createdBy == msg.sender, "You are not authorized to view this patient's data");
            Patient memory p = patients[_patientId];
            return (p.id, p.name, p.age, p.diseases);
        }

        function viewDoctor(uint _doctorId) public view returns (uint, string memory, string memory, string memory) {
            require(doctors[_doctorId].createdBy == msg.sender, "You are not authorized to view this doctor's data");
            Doctor memory d = doctors[_doctorId];
            return (d.id, d.name, d.qualification, d.workPlace);
        }

        function viewMedicine(uint _medicineId) public view returns (uint, string memory, string memory, string memory, uint) {
            Medicine memory m = medicines[_medicineId];
            return (m.id, m.name, m.expiryDate, m.dose, m.price);
        }

        function viewPatientMedicines(uint _patientId) public view returns (uint[] memory) {
        require(patients[_patientId].createdBy == msg.sender, "You are not authorized to view this patient's medicines");
        return patientMedicines[_patientId];
        }
    }