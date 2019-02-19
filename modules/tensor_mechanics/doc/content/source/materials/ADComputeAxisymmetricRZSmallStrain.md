# ADComputeAxisymmetricRZSmallStrain

!syntax description /ADMaterials/ADComputeAxisymmetricRZSmallStrain<RESIDUAL>

## Description

The material `ADComputeAxisymmetricRZSmallStrain` calculates the small total
strain for Axisymmetric systems.

!include modules/tensor_mechanics/common/supplementalADAxisymmetricRZStrain.md

Only minimal changes are required to adapt a plane strain problem to an
axisymmetric problem. The axisymmetric specific
`ADComputeAxisymmetricRZSmallStrain` code overwrites the method used to
calculate the total strain component $\epsilon_{\theta \theta}$ before
calculating the total strain measure with the small strain assumptions.

!syntax parameters /ADMaterials/ADComputeAxisymmetricRZSmallStrain<RESIDUAL>

!syntax inputs /ADMaterials/ADComputeAxisymmetricRZSmallStrain<RESIDUAL>

!syntax children /ADMaterials/ADComputeAxisymmetricRZSmallStrain<RESIDUAL>