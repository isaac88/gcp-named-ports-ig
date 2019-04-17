data "external" "named_ports" {
  count = "${var.num_igs}"

  program = ["${path.module}/add_named_ports.sh"]

  query = {
    instance_group = "${replace(lookup(var.instance_groups[count.index], "group"), "instanceGroupManagers", "instanceGroups")}"
    name           = "${var.name}"
    port           = "${var.port}"
  }
}
