# Fixed-Priority-Arbiter
An arbiter is a mediator between different system components and system resources. It is used to set priority to the requesters and requests are serviced according to the priority of requester. In Priority arbiter, the priority of requesters remains fixed.
* According to verilog code , I have assumed priority order as REQ[3]>REQ[1]>REQ[0]>REQ[2].So, when the requester with highest priority requests for resource, arbiter will neglect low priority requesters.

## Toolchain
* Xilinx ISE for synthesis
* Isim for simulation

### RTL schematic
![image](https://user-images.githubusercontent.com/76483382/221356643-5b54736a-c0d3-43d4-84ca-50f59cb99dc9.png)

