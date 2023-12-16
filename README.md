# Fairlane Property Management Database

This repository contains a MySQL database dump for a property management system named Fairlane. The database includes tables for leases, maintenance requests, parking information, properties, tenants, and vehicles. Below is an overview of the database structure and information about each table.

## Database Structure

### Tables

1. **lease**: Information about property leases, including LeaseID, PropertyID, TenantID, lease start and end dates, and parking information.

2. **maintenance_request**: Records of maintenance requests with details such as RequestID, PropertyID, TenantID, request date, and description.

3. **parking**: Details about parking spaces, including ParkingID, type (e.g., Garage, Open Parking), and availability.

4. **property**: Information about properties, including PropertyID, floor plan, size, number of bedrooms and bathrooms, address, availability, and monthly rent.

5. **tenant**: Details about tenants, including TenantID, first and last names, phone number, email, and gender.

6. **vehicle**: Records of tenant vehicles, including TenantID, vehicle plate, parking ID, and start and end dates.

### Indexes

- Indexes and constraints are in place to maintain data integrity and ensure efficient querying.

## Usage

To use this database dump:

1. **Import Database**: Use a tool like MySQL or phpMyAdmin to import the SQL dump file (`fairlane.sql`) into your database server.

2. **Explore Data**: You can now explore the data and run queries to retrieve information about leases, maintenance requests, properties, tenants, parking, and vehicles.

## Sample Queries

Here are some sample queries you can use to explore the data:

- Retrieve all leases with tenant information:

  ```sql
  SELECT lease.*, tenant.Fname, tenant.Lname
  FROM lease
  JOIN tenant ON lease.TenantID = tenant.TenantID;
  ```

- Find properties with available parking:

  ```sql
  SELECT property.*, parking.Availability
  FROM property
  LEFT JOIN lease ON property.PropertyID = lease.PropertyID
  LEFT JOIN parking ON lease.Parkingid = parking.ParkingID
  WHERE parking.Availability = 'Y';
  ```

Feel free to modify and expand the README based on your specific use case and requirements.
