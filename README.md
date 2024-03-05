# Sentinel Policy Repository

This repository contains a collection of Sentinel policies for enforcing compliance, security, and operational standards across various resources within Azure infrastructure.

## Folder Structure

![repository-structure](image-url)

The repository is structured as follows:

- **CommonFunctions**: Contains a code file (`tfplan-utils.sentinel`) with commonly used functions across other code files.
- **GlobalPolicySet**: Contains policies (`*.sentinel`) used at a global level for all resource types.
- **Resource-Specific Policy Sets**:
  - **ManagementGroupPolicySet**: Contains policies specific to Management Groups.
    - "restrict-deleting-management-group.sentinel" - This policy restricts deletion of Management Group using terraform.
  - **ResourceGroupPolicySet**: Contains policies specific to Resource Groups.
    - "restrict-deleting-resource-group.sentinel" - This policy restricts deletion of Resource Group using terraform.
  - **SubscriptionPolicySet**: Contains policies specific to subscription.
    - "restrict-deleting-subscription.sentinel" - This policy restricts deletion of subscription using terraform.

## Configuration File

![configuration-json](image-url)

The configuration file (`policy_config.json`) includes the following blocks:

- **Global Policies**: Defines global policy settings such as mandatory tags, allowed locations, resource types, and naming conventions.
- **Environment-Specific Blocks**: Contains environment-specific data used in the code files for policy evaluation.

## Code File Structure

Each Sentinel policy file follows a standard structure:

1. **Import Statements**: Import necessary libraries and modules for policy evaluation (`import "tfplan/v2"`).
2. **Data Extraction**: Extract details such as provider name, actions, and policy control data from the configuration file.
3. **Resource Filtering**: Filter resources from the Terraform plan file based on policy criteria.
4. **Policy Evaluation Logic**: Implement logic for policy rule evaluation based on extracted data.
5. **Main Rule Result**: Determine the final result of the policy evaluation (true or false).

## Testing

The `test` folder within each policy set folder contains subfolders named after policy data. Each of these subfolders contains:

![test-folder-structure](image-url)

- **Configuration Files**:
  - `failure.hcl`: Configuration file for negative test scenarios.
  - `success.hcl`: Configuration file for positive test scenarios.
- **Mock Files**: Mock Terraform plan files containing test data for negative and positive scenarios.

These folders are used for testing purposes using `sentinel test` and `sentinel apply` commands.

## Adding a new policy

- Use the GlobalPolicySet folder for a global policy and use the resource based folder for adding a resource level policy.
- Create the sentinel file within the folder with '.sentinel' extention following the code structure described above.
- Add the policy block to the sentinel.hcl file within the same folder.
- For testing the code, create a folder with the same policy name within the Test folder and add the mock files for success and failure tests and add the hcl files for the similar scenarios.
- Within the terminal, bring the present working directory to the policy set folder and use sentinel test command with policy file name from the terminal.