# Habilitamos el usuario
enable

# Ingresamos a configurar el router
config terminal
# Establecemos el nombre del router
hostname router01
# Establecesmo la interface como siempre habilitada
interface fastEthernet 0/0
no shutdown
exit

## Configuramos la VLAN 10 con el protocolo dot1q
interface fastEthernet 0/0.10
encapsulation dot1q 10
# Establecemos el Gateway y la mascara para la VLAN
ip address 172.16.0.1 255.255.248.0
# Establecesmo la interface como siempre habilitada
no shutdown
exit

## Configuramos la VLAN 20 con el protocolo dot1q
interface fastEthernet 0/0.20
encapsulation dot1q 20
# Establecemos el Gateway y la mascara para la VLAN
ip address 172.16.8.1 255.255.254.0
# Establecesmo la interface como siempre habilitada
no shutdown
exit

## Configuracion troncal
interface fastEthernet 0/1
# Establecemos el Gateway y la mascara para la VLAN
ip address 172.16.11.129 255.255.255.248
no shutdown
exit

## Configuracion del DHCP
interface fastEthernet 0/0.10
# Configuramos la ip del servidor dhcp para la VLAN
ip helper-address 172.16.11.134
exit

interface fastEthernet 0/0.20
# Configuramos la ip del servidor dhcp para la VLAN
ip helper-address 172.16.11.134
exit

# Salimos de la configuracion del router
end

# Guardamos la configuracion realizada
copy running-config startup-config
