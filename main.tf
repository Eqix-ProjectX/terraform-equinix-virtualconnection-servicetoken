
resource "equinix_fabric_connection" "vd2token" {
  name = var.connection_name
  type = var.connection_type
  notifications {
    type   = "ALL"
    emails = var.notifications_emails
  }
  bandwidth = var.bandwidth
  order {
    purchase_order_number = var.purchase_order_number
  }
  a_side {
    access_point {
      type = "VD"
      virtual_device {
        type = "EDGE"
        uuid = var.device_uuid
      }
      interface {
        type = "NETWORK"
        id = var.interface_number
      }
    }
  }
  z_side {
    service_token {
      uuid = var.servicetoken_uuid
    }
  }
}