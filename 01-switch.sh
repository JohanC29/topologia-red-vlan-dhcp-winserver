## Habilitamos el usuario
enable

## Ingresamos a configurar el sw
config terminal

# Creamos la primera VLAN
vlan 20
# Nombramos la VLAN
name PROFESORES
# Salimos de la VLAN20
exit

# Creamos la VLAN
vlan 10
# Nombramos la VLAN
name ESTUDIANTES
# Salimos de la VLAN20
exit
# Salimos de la configuracion del SW
end

# Guardamos la configuracion
wr

# Configuracion de las interface vlan 10 ESTUDIANTES
config terminal
interface fastEthernet 1/1
switchport mode access
switchport access vlan 10
no shutdown
exit

interface fastEthernet 1/2
switchport mode access
switchport access vlan 10
no shutdown
exit

# Configuracion de la interface vlan 20 PROFESORES
interface fastEthernet 1/3
switchport mode access
switchport access vlan 20
no shutdown
exit

interface fastEthernet 1/4
switchport mode access
switchport access vlan 20
no shutdown
exit


# Configuracion de la interface troncal con el router
interface fastEthernet 1/0
## Configuracion del protocolo
switchport trunk encapsulation dot1q
switchport trunk allowed vlan all
switchport mode trunk
exit
end

# Guardamos la configuracion
wr

