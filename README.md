This project is a database management system designed to manage an insurance company's data, focusing on customers, policies, vehicles, claims, agents, and sales. It consists of multiple interconnected tables, each serving a distinct purpose within the insurance business process. Here's a simple description of the components and their roles:

Customers:
  The Project_Insurance_Customer table stores details about the insurance customers, including their personal information (name, email, age, gender, etc.).
  
Insurance Policies:
  The Project_Insurance_Policy table contains data on the insurance policies offered, such as the policy number, type (e.g., car, bike, truck), premium amount, and the customer it belongs to.

Vehicles:
  The project_insurance_vehicle table holds information on the vehicles associated with each policy, including vehicle type, make, model, and registration number.
  
Claims:
  The project_insurance_claim table tracks claims made against the insurance policies, including the claim amount, date, status (approved, pending, etc.), and type of claim (accident, theft, etc.).

Agents:
  The project_insurance_agent table stores details about insurance agents, such as their name, contact information, hire date, and commission rate.
  
Policy Sales:
  The policy_sales table records the sale of policies by agents, including the sale date, sale amount, and agent responsible for the sale.
  
Uses of foreign keys:
  Foreign keys are used to establish relationships between customers, policies, vehicles, claims, and agents.
  
Data Validation: Constraints such as CHECK are applied to ensure data validity (e.g., valid gender values, policy types, etc.)

Uses of rollback and commit:
  The system supports transactions, including commit and rollback functionality, ensuring data integrity during operations.
  
  This system helps manage the lifecycle of an insurance policy, from customer registration to claim handling and policy sales, ensuring that all data is accurately recorded and relationships between entities are properly maintained.
