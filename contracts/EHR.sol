// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

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
        string work_place;
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
        patients[patientCount] = Patient(patientCount, _name, _age, new string[](0));
    }

    function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
        doctorCount++;
        doctors[doctorCount] = Doctor(doctorCount, _name, _qualification, _workPlace);
    }

}

//TEST-1
