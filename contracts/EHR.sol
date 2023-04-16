// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract portion defines the patient,doctor and medicine information portal
contract EHR { 
    struct Patient { 
        string name;
        uint8 age; 
        uint id;
        string[] diseases;
    }
    struct Doctor {
        string name;
        string qualification;
        string workPlace;
        uint id;
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

    function registerPatient(string memory _name, uint8 _age) public {
        patientCount++;
        patients[patientCount] = Patient(_name, _age, patientCount, new string[](0));
    }

    function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
        doctorCount++;
        doctors[doctorCount] = Doctor(_name, _qualification, _workPlace, doctorCount);
    }

    function addDisease(uint _patientId, string memory _disease) public {
        patients[_patientId].diseases.push(_disease);
    }
    function addMedicine(string memory _name, string memory _expiryDate, string memory _dose, uint _price) public {
        medicineCount++;
        medicines[medicineCount] = Medicine(medicineCount, _name, _expiryDate, _dose, _price);
    }

    function prescribeMedicine(uint _patientId, uint _medicineId) public {
        patientMedicines[_patientId].push(_medicineId);
    }

    function updatePatientAge(uint _patientId, uint8 _newAge) public {
        patients[_patientId].age = _newAge;
    }

    function viewPatient(uint _patientId) public view returns (uint, string memory, uint, string[] memory) {
        Patient memory p = patients[_patientId];
        return (p.id, p.name, p.age, p.diseases);
    }

    function viewDoctor(uint _doctorId) public view returns (uint, string memory, string memory, string memory) {
        Doctor memory d = doctors[_doctorId];
        return (d.id, d.name, d.qualification, d.workPlace);
    }

    function viewMedicine(uint _medicineId) public view returns (uint, string memory, string memory, string memory, uint) {
        Medicine memory m = medicines[_medicineId];
        return (m.id, m.name, m.expiryDate, m.dose, m.price);
    }

    function viewPatientMedicines(uint _patientId) public view returns (uint[] memory) {
        return patientMedicines[_patientId];
    }
}





//TEST-1
