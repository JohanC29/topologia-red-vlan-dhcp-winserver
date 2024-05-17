# topologia-red-vlan-dhcp-winserver

La configuracion presente en este proyecto se utiliza para implementar la siguiente topologia de red:

![Descripción de la imagen](/images/topologia.png)

## Componentes

La topologia montada cuenta con los siguientes componentes:

* Router Cisco (C3660-JK9O3S-M)
* Switch Cisco (C3725-ADVENTERPRISEK9-M)
* Windows Server 2019
* Windows 10
* Vitual PC (Default GNS3)

## Segmentacion

Para la configuracion de los tres segmentos de la red se establecieron las sigueintes IP's, donde dos son para las vlan (una para cada una) y la del servidor:

| Red | Nombre | Gateway | Mascara | Rango IP |
|----------|----------|----------|----------|----------|
| VLAN10    | ESTUDIANTES   | 172.16.0.1   | 255.255.248.0 | 172.16.0.1 - 172.16.7.254 |
| VLAN20    | PROFESORES  | 172.16.8.1   | 255.255.254.0 | 172.16.8.1 - 172.16.9.254 |
| Servidor    | SERVIDOR   | 172.16.11.129   | 255.255.255.248 | 172.16.11.134 |

## Configuracion Switch

Para la configuracion del SW se realizo la configuracion que contiene el siguiente archivo:

`01-switch.sh`

## Configuracion Router

Para la configuracion del router se utilizo el siguiente archivo:

`02-router01.sh`

## Seguridad componentes de red

Para la seguridad en la red, se implemento una seguridad basica donde se aplica el mismo archivo tanto en el SW como en el router:

`03-Seguridad.sh`

Equipo de trabajo:
* [Juan Jose Gomez [uccjuangomez] ](https://github.com/uccjuangomez)
* [Johan Camilo Muelas [johanc29]](https://github.com/johanc29)