# Create the Dynamodb Table for lock the state
resource "aws_dynamodb_table" "terraform-lock" {
    name           = "${var.aws_profile}_terraform_state"
    read_capacity  = 10
    write_capacity = 10
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }

    point_in_time_recovery {
        enabled = true
    }
}


