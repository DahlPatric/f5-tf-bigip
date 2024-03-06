resource "bigip_fast_http_app" "app2" {
  application               = "myApp4"
  tenant                    = "scenario3"
  virtual_server            {
    ip                        = "10.1.10.224"
    port                      = 80
  }
  pool_members  {
    addresses                 = ["10.1.10.120", "10.1.10.121", "10.1.10.122"]
    port                      = 80
  }
  snat_pool_address = ["10.1.10.50", "10.1.10.51", "10.1.10.52"]
  load_balancing_mode       = "least-connections-member"
  monitor       {
    send_string               = "GET / HTTP/1.1\\r\\nHost: example.com\\r\\nConnection: Close\\r\\n\\r\\n"
    response                  = "200 OK"
  }
}
