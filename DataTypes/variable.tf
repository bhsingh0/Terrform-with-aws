variable instance_name {}

#variable port-1 {
 ##   description="Enter a number for port-1"
#    type=number
##    }
#variable port-2 {
#    type=number
#    }
#variable port-3 {
##    type=number
#    }
##variable port-4 {
#    type=number
##   }

variable port_numbers {
    description = "Enter 4 port numbers for inbbound rules"
    type=list(number)
    }


variable sg_name {
    description = "Enter a name for security group"
    type =string
}

variable cidr {
    default = "44.55.66.77/32"
}