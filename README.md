DECENTRALIZED PATIENT RECORD STORAGE:

Decentralized Patient Record Storage

Problem Statement: The patient record is one of the important assets that is currently centralized, maintained, and managed by hospitals. Some countries have moved to Electronic Health Record (EHR), and many countries still follow the old method to store the patient and medical details. Around 80 to 90% of the hospitals in the United States have adopted basic EHR systems, which have a lot of problems related to privacy, security, and ownership of these health records. Even after moving to EHR, the patient record is completely owned and controlled by hospitals, and being the owner of that record, a patient does not have access to the data and has to always reach out to hospitals to get it. Data consolidation is one of the biggest challenges as every hospital stores these EHRs on their server. The patients need to access different EHRs to consolidate their complete medical history. Since hospitals own the EHRs, they have full control and can manipulate the data at any moment. They can even sell the data to research organization and earn a good amount of money. Along with the patient record, doctor authenticity is another challenge that is faced as there is no direct way to check if the doctor is real or not.

Solution: Blockchain is a technology designed to manage patient data that has the potential to support transparency and accountability. A blockchain is a ledger of transactions where an identical copy is visible to all the members of a computer network. Network members validate the data entered into the ledger, and once entered, the data is immutable. With the help of Blockchain technology, a solution can be developed to store the EHR of any patient in a distributed and decentralized network. With blockchain solutions, patients can own their data and can approve hospitals, doctors, and research organizations to access their data.

Roles: In this solution, we are going to focus on two roles: ● Patient ● Doctor A patient can do the following functions: ● Register to the portal ● Add new diseases ● View their records ● Update their data A doctor can do the following things: ● Register to the portal ● Access and add the records of their patients ● Prescribe medicine to a patient

Features of the application:

Register a new doctor
This function is used to register a new doctor to the ledger. It takes the below parameters: /**
@param _name Name of the doctor @param _qualification Which degree he/she holds as a doctor @param _workPlace Address of his/her hospital/clinic */

Register a new patient This function is used to register a new patient to the ledger. It takes the below parameters: /** @param _name Name of the user @param _age Age of user */
Add a patient's disease
This function is used to add a patient's disease. It takes the below parameters: /** @param _disease Name of the disease */

Add medicine This function is used to add medicines. It takes the below parameters:
/**
@param _id Id of the medicine @param _name name of the medicine @param _expiryDate ExpiryDate of the medicine @param _dose Dose prescribed to the patient @param _price Price of the medicine */

Prescribe medicine This function is used by doctors to prescribe medicine to a patient. It takes the below parameters:

/**
@param _id Medicine Id
@param _patient address of the patient
*/

Update patient details by patient

This function helps patients to update their age. It takes the below parameters: /** @param _age New age of the patient */

View patient data
This function helps to view patient data stored in Blockchain. It takes the below parameters: /** @return id Id of the patient @return age Age of the patient @return name Name of the patient @return disease All the diseases of the patient */

View medicine details
This function helps to fetch medicine details. This function below input parameters and return the details about the medicine.

/** @param id Id of the medicine @return name Name of the medicine @return expiryDate Expiry date of the medicine @return dose Dose prescribed for the medicine @return price Price of the medicine */

View patient data by a doctor
This function helps a doctor to view patient data. It takes the below parameters:

/**
    @param _id ID of the patient
    @return id ID of the patient
    @return age Age of the patient
    @return name Name of the patient
    @return disease All the diseases of the patient
*/ 
View prescribed medicine to the patient
This function helps the doctor to view patient data. It takes the below parameters:

    /**
    @dev View prescribed medicines to the patient 
    @param _patient address of the patient
    @return ids list of medicine id's
*/
View doctor details
This function helps to view doctor details. It takes the below parameters:

/** @param _id ID of the doctor @return id ID of the doctor @return name Name of the doctor @return qualification Name of degree he/she holds as a doctor @return add Address of his/her hospital/clinic */

Recommended technologies:

Smart Contract development: Solidity
IDE Tool: Remix
Blockchain: Ethereum
Server: Ganache Blockchain
Project development guidelines: ● The project will be delivered within four sprints with every sprint delivering a minimal viable product. ● It is mandatory to do proper sprint planning with user stories to develop all the components of the project. ● The learner can use any technology from the above-mentioned technologies for different layers of the project. ● The learner must maintain the version of the application over GitHub and every new change should be sent to the repository. ● The learner should also deploy and host the application on any blockchain instance.

Project outputs: Once you deploy the contract using remix IDE, you can see all the below functions:

Function Details: Register a new doctor using the below function:

Add a new patient:

Add a new disease for the patient:

Add medicine to the ledger:

Prescribe medicine to the patient:

Update the age of the patient:

View patient data:

View medicine details:

View prescribed medicine:

View patient data by doctor:

View doctor details:

EHR_Project
User Stories for Sprint 1:

As a developer, I want to set up the development environment with Solidity, Remix, Ethereum, and Ganache, so that I can start developing the smart contract. As a developer, I want to create the basic smart contract structure and data structures (e.g., structs for Patient, Doctor, and Medicine), so that I can implement the user registration functions for both patients and doctors. As a patient, I want to be able to register my account on the platform, so that I can access my medical records. As a doctor, I want to be able to register my account on the platform, so that I can access my patients' medical records. As a developer, I want to implement the access control mechanisms (e.g., onlyDoctor and onlyPatient modifiers), so that only authorized users can access the system. As a tester, I want to ensure that the user registration functionality and access control are working as expected, so that we can move on to the next sprint.

Sprint 1: Basic Setup and User Registration Objective: Set up the development environment, create the smart contract structure, and implement user registration functions for both patients and doctors.

Tasks:

Set up the development environment with Solidity, Remix, Ethereum, and Ganache. Create the basic smart contract structure and data structures (e.g., structs for Patient, Doctor, and Medicine). Implement the user registration functions for both patients and doctors (registerPatient and registerDoctor). Implement the access control mechanisms (e.g., onlyDoctor and onlyPatient modifiers). Test user registration functionality and access control. Deliverable: A functional smart contract with user registration for patients and doctors.

User stories for Sprint 2:

As a developer, I want to implement error handling and appropriate access control for patient record management functions, so that the system remains secure and reliable As a patient, I want to be able to view my medical records on the platform, so that I can keep track of my health. As a doctor, I want to be able to add and update patient data (e.g., addDisease, updatePatientDetails), so that I can provide better care to my patients. As a tester, I want to ensure that the patient record management functionality is working as expected, so that we can move on to the next sprint.

Sprint 2: Indiacate patient records and disease management Objective: Implement functions for managing patient records and diseases, as well as viewing patient data. Tasks:

Implement the functions to add and update patient data (e.g., addDisease, updatePatientDetails). Implement the function to view patient data (viewPatientData). Implement error handling and appropriate access control for these functions. Test patient record management functionality.

Deliverable: A smart contract with functions to manage patient records and diseases.

User stories for Sprint 3:

As a developer, I want to implement error handling and access control for medicine-related functions, so that the system remains secure and reliable. As a patient, I want to be able to view details of the prescribed medicines on the platform, so that I can be informed about my treatment As a doctor,I want to be able to add and prescribe medicines (addMedicine and prescribeMedicine), so that I can provide better care to my patients. As a tester, I want to ensure that the medicine management and prescription functionality is working as expected, so that we can move on to the next sprint.

Sprint 3: Medicine Management and Prescription Objective: Implement functions for managing medicines and prescriptions. Tasks:

Implement the functions to add and prescribe medicines (addMedicine and prescribeMedicine). Implement the function to view medicine details (viewMedicineDetails). Implement error handling and access control for medicine-related functions. Test medicine management and prescription functionality. Deliverable: A smart contract with functions for medicine management and prescription.

User stories for Sprint 4:

As a developer, I want to implement error handling and access control for doctor-patient interaction functions, so that the system remains secure and reliable As a patient, I want to be able to view my doctor's details on the platform, so that I can be informed about my treatment. As a doctor,I want to be able to view my patients' data and prescribed medicines (viewPatientDataByDoctor and viewPrescribedMedicineToPatient), so that I can provide better care to my patients As a tester, Test and integrate all functionalities Deploy the smart contract to the Ethereum network and host the dApp on a suitable blockchain instance

Deliverable: A fully functional blockchain-based EHR solution with proper access control, error handling, and adherence to best practices.

Sprint 4: Doctor-Patient Interactions and Final Integration Objective: Implement functions for doctor-patient interactions and integrate all functionalities into the final product. Tasks:

Implement the functions for doctors to view patient data and prescribed medicines (viewPatientDataByDoctor and viewPrescribedMedicineToPatient). Implement the function to view doctor details (viewDoctorDetails). Implement error handling and access control for doctor-patient interaction functions. Test and integrate all functionalities. Deploy the smart contract to the Ethereum network and host the dApp on a suitable blockchain instance.

Deliverable: A fully functional blockchain-based EHR solution with proper access control, error handling, and adherence to best practices.
