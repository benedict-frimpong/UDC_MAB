��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MatrixDiagV3
diagonal"T
k
num_rows
num_cols
padding_value"T
output"T"	
Ttype"Q
alignstring
RIGHT_LEFT:2
0
LEFT_RIGHT
RIGHT_LEFT	LEFT_LEFTRIGHT_RIGHT
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
�
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
f
thetaVarHandleOp*
_output_shapes
: *
dtype0*
shape
:u*
shared_nametheta
_
theta/Read/ReadVariableOpReadVariableOptheta*
_output_shapes

:u*
dtype0
n
num_samples_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namenum_samples_1
g
!num_samples_1/Read/ReadVariableOpReadVariableOpnum_samples_1*
_output_shapes
: *
dtype0
n
num_samples_0VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namenum_samples_0
g
!num_samples_0/Read/ReadVariableOpReadVariableOpnum_samples_0*
_output_shapes
: *
dtype0
^
b_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:u*
shared_nameb_1
W
b_1/Read/ReadVariableOpReadVariableOpb_1*
_output_shapes
:u*
dtype0
^
b_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:u*
shared_nameb_0
W
b_0/Read/ReadVariableOpReadVariableOpb_0*
_output_shapes
:u*
dtype0
b
a_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:uu*
shared_namea_1
[
a_1/Read/ReadVariableOpReadVariableOpa_1*
_output_shapes

:uu*
dtype0
b
a_0VarHandleOp*
_output_shapes
: *
dtype0*
shape
:uu*
shared_namea_0
[
a_0/Read/ReadVariableOpReadVariableOpa_0*
_output_shapes

:uu*
dtype0
j
global_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
l
action_0_discountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
w
action_0_observationPlaceholder*'
_output_shapes
:���������u*
dtype0*
shape:���������u
j
action_0_rewardPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
m
action_0_step_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_typea_0b_0a_1b_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *C
f>R<
:__inference_signature_wrapper_function_with_signature_2194
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *C
f>R<
:__inference_signature_wrapper_function_with_signature_2204
�
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *C
f>R<
:__inference_signature_wrapper_function_with_signature_2222
�
StatefulPartitionedCall_1StatefulPartitionedCallglobal_step*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *C
f>R<
:__inference_signature_wrapper_function_with_signature_2217

NoOpNoOp
�	
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�	
value�	B�	 B�	
�

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures*
JD
VARIABLE_VALUEglobal_step%train_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*
E
_cov_matrix
_data_vector
_num_samples

_theta*

trace_0
trace_1* 

trace_0* 

trace_0* 
* 
* 
K

action
get_initial_state
get_train_step
get_metadata* 
IC
VARIABLE_VALUEa_0,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEa_1,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEb_0,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEb_1,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEnum_samples_0,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEnum_samples_1,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEtheta,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameglobal_stepa_0a_1b_0b_1num_samples_0num_samples_1thetaConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__traced_save_2536
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameglobal_stepa_0a_1b_0b_1num_samples_0num_samples_1theta*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_restore_2569��
�X
�
&__inference_polymorphic_action_fn_2309
	step_type

reward
discount
observation)
readvariableop_resource:uu3
%einsum_einsum_readvariableop_resource:u+
readvariableop_1_resource:uu5
'einsum_2_einsum_readvariableop_resource:u
identity��ReadVariableOp�ReadVariableOp_1�einsum/Einsum/ReadVariableOp�einsum_2/Einsum/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����u   i
ReshapeReshapeobservationReshape/shape:output:0*
T0*'
_output_shapes
:���������up
matrix_transpose/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose/transpose	TransposeReshape:output:0(matrix_transpose/transpose/perm:output:0*
T0*'
_output_shapes
:u���������U
eye/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?L

eye/diag/kConst*
_output_shapes
: *
dtype0*
value	B : \
eye/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
eye/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������[
eye/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
eye/diagMatrixDiagV3eye/ones:output:0eye/diag/k:output:0eye/diag/num_rows:output:0eye/diag/num_cols:output:0eye/diag/padding_value:output:0*
T0*
_output_shapes

:uuJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
mulMulmul/x:output:0eye/diag:output:0*
T0*
_output_shapes

:uuf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:uu*
dtype0V
addAddV2ReadVariableOp:value:0mul:z:0*
T0*
_output_shapes

:uu�
PartitionedCallPartitionedCalladd:z:0matrix_transpose/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099~
einsum/Einsum/ReadVariableOpReadVariableOp%einsum_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum/EinsumEinsum$einsum/Einsum/ReadVariableOp:value:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_1/EinsumEinsummatrix_transpose/transpose:y:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->jr
!matrix_transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose_1/transpose	TransposeReshape:output:0*matrix_transpose_1/transpose/perm:output:0*
T0*'
_output_shapes
:u���������W

eye_1/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?N
eye_1/diag/kConst*
_output_shapes
: *
dtype0*
value	B : ^
eye_1/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������^
eye_1/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
eye_1/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �

eye_1/diagMatrixDiagV3eye_1/ones:output:0eye_1/diag/k:output:0eye_1/diag/num_rows:output:0eye_1/diag/num_cols:output:0!eye_1/diag/padding_value:output:0*
T0*
_output_shapes

:uuL
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?\
mul_1Mulmul_1/x:output:0eye_1/diag:output:0*
T0*
_output_shapes

:uuj
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes

:uu*
dtype0\
add_1AddV2ReadVariableOp_1:value:0	mul_1:z:0*
T0*
_output_shapes

:uu�
PartitionedCall_1PartitionedCall	add_1:z:0 matrix_transpose_1/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099�
einsum_2/Einsum/ReadVariableOpReadVariableOp'einsum_2_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum_2/EinsumEinsum&einsum_2/Einsum/ReadVariableOp:value:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_3/EinsumEinsum matrix_transpose_1/transpose:y:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->j�
stackPackeinsum/Einsum:output:0einsum_2/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis����������
stack_1Packeinsum_1/Einsum:output:0einsum_3/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis���������P
SqrtSqrtstack_1:output:0*
T0*'
_output_shapes
:���������L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AZ
mul_2Mulmul_2/x:output:0Sqrt:y:0*
T0*'
_output_shapes
:���������[
add_2AddV2stack:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������N
ShapeShapeobservation*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������w
ArgMaxArgMax	add_2:z:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������*
output_type0T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB g
Deterministic/sample/ShapeShapeArgMax:output:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToArgMax:output:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:����������
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^einsum/Einsum/ReadVariableOp^einsum_2/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������:���������:���������:���������u: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12<
einsum/Einsum/ReadVariableOpeinsum/Einsum/ReadVariableOp2@
einsum_2/Einsum/ReadVariableOpeinsum_2/Einsum/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:TP
'
_output_shapes
:���������u
%
_user_specified_nameobservation:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
L
:__inference_signature_wrapper_function_with_signature_2204

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *1
f,R*
(__inference_function_with_signature_2200*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
*
(__inference_function_with_signature_2219�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *!
fR
__inference_<lambda>_213*(
_construction_contextkEagerRuntime*
_input_shapes 
�'
�
 __inference__traced_restore_2569
file_prefix&
assignvariableop_global_step:	 (
assignvariableop_1_a_0:uu(
assignvariableop_2_a_1:uu$
assignvariableop_3_b_0:u$
assignvariableop_4_b_1:u*
 assignvariableop_5_num_samples_0: *
 assignvariableop_6_num_samples_1: *
assignvariableop_7_theta:u

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_global_stepIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_a_0Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_a_1Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_b_0Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_b_1Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_num_samples_0Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_num_samples_1Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_thetaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
_output_shapes
 "!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameglobal_step:#

_user_specified_namea_0:#

_user_specified_namea_1:#

_user_specified_nameb_0:#

_user_specified_nameb_1:-)
'
_user_specified_namenum_samples_0:-)
'
_user_specified_namenum_samples_1:%!

_user_specified_nametheta
�
4
"__inference_get_initial_state_2461

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�Y
�
&__inference_polymorphic_action_fn_2396
time_step_step_type
time_step_reward
time_step_discount
time_step_observation)
readvariableop_resource:uu3
%einsum_einsum_readvariableop_resource:u+
readvariableop_1_resource:uu5
'einsum_2_einsum_readvariableop_resource:u
identity��ReadVariableOp�ReadVariableOp_1�einsum/Einsum/ReadVariableOp�einsum_2/Einsum/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����u   s
ReshapeReshapetime_step_observationReshape/shape:output:0*
T0*'
_output_shapes
:���������up
matrix_transpose/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose/transpose	TransposeReshape:output:0(matrix_transpose/transpose/perm:output:0*
T0*'
_output_shapes
:u���������U
eye/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?L

eye/diag/kConst*
_output_shapes
: *
dtype0*
value	B : \
eye/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
eye/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������[
eye/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
eye/diagMatrixDiagV3eye/ones:output:0eye/diag/k:output:0eye/diag/num_rows:output:0eye/diag/num_cols:output:0eye/diag/padding_value:output:0*
T0*
_output_shapes

:uuJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
mulMulmul/x:output:0eye/diag:output:0*
T0*
_output_shapes

:uuf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:uu*
dtype0V
addAddV2ReadVariableOp:value:0mul:z:0*
T0*
_output_shapes

:uu�
PartitionedCallPartitionedCalladd:z:0matrix_transpose/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099~
einsum/Einsum/ReadVariableOpReadVariableOp%einsum_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum/EinsumEinsum$einsum/Einsum/ReadVariableOp:value:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_1/EinsumEinsummatrix_transpose/transpose:y:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->jr
!matrix_transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose_1/transpose	TransposeReshape:output:0*matrix_transpose_1/transpose/perm:output:0*
T0*'
_output_shapes
:u���������W

eye_1/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?N
eye_1/diag/kConst*
_output_shapes
: *
dtype0*
value	B : ^
eye_1/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������^
eye_1/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
eye_1/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �

eye_1/diagMatrixDiagV3eye_1/ones:output:0eye_1/diag/k:output:0eye_1/diag/num_rows:output:0eye_1/diag/num_cols:output:0!eye_1/diag/padding_value:output:0*
T0*
_output_shapes

:uuL
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?\
mul_1Mulmul_1/x:output:0eye_1/diag:output:0*
T0*
_output_shapes

:uuj
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes

:uu*
dtype0\
add_1AddV2ReadVariableOp_1:value:0	mul_1:z:0*
T0*
_output_shapes

:uu�
PartitionedCall_1PartitionedCall	add_1:z:0 matrix_transpose_1/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099�
einsum_2/Einsum/ReadVariableOpReadVariableOp'einsum_2_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum_2/EinsumEinsum&einsum_2/Einsum/ReadVariableOp:value:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_3/EinsumEinsum matrix_transpose_1/transpose:y:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->j�
stackPackeinsum/Einsum:output:0einsum_2/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis����������
stack_1Packeinsum_1/Einsum:output:0einsum_3/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis���������P
SqrtSqrtstack_1:output:0*
T0*'
_output_shapes
:���������L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AZ
mul_2Mulmul_2/x:output:0Sqrt:y:0*
T0*'
_output_shapes
:���������[
add_2AddV2stack:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������X
ShapeShapetime_step_observation*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������w
ArgMaxArgMax	add_2:z:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������*
output_type0T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB g
Deterministic/sample/ShapeShapeArgMax:output:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToArgMax:output:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:����������
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^einsum/Einsum/ReadVariableOp^einsum_2/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������:���������:���������:���������u: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12<
einsum/Einsum/ReadVariableOpeinsum/Einsum/ReadVariableOp2@
einsum_2/Einsum/ReadVariableOpeinsum_2/Einsum/ReadVariableOp:X T
#
_output_shapes
:���������
-
_user_specified_nametime_step_step_type:UQ
#
_output_shapes
:���������
*
_user_specified_nametime_step_reward:WS
#
_output_shapes
:���������
,
_user_specified_nametime_step_discount:^Z
'
_output_shapes
:���������u
/
_user_specified_nametime_step_observation:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
z
:__inference_signature_wrapper_function_with_signature_2217
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *1
f,R*
(__inference_function_with_signature_2210^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:$  

_user_specified_name2213
�<
�
,__inference_polymorphic_distribution_fn_2458
	step_type

reward
discount
observation)
readvariableop_resource:uu3
%einsum_einsum_readvariableop_resource:u+
readvariableop_1_resource:uu5
'einsum_2_einsum_readvariableop_resource:u
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�einsum/Einsum/ReadVariableOp�einsum_2/Einsum/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����u   i
ReshapeReshapeobservationReshape/shape:output:0*
T0*'
_output_shapes
:���������up
matrix_transpose/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose/transpose	TransposeReshape:output:0(matrix_transpose/transpose/perm:output:0*
T0*'
_output_shapes
:u���������U
eye/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?L

eye/diag/kConst*
_output_shapes
: *
dtype0*
value	B : \
eye/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
eye/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������[
eye/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
eye/diagMatrixDiagV3eye/ones:output:0eye/diag/k:output:0eye/diag/num_rows:output:0eye/diag/num_cols:output:0eye/diag/padding_value:output:0*
T0*
_output_shapes

:uuJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
mulMulmul/x:output:0eye/diag:output:0*
T0*
_output_shapes

:uuf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:uu*
dtype0V
addAddV2ReadVariableOp:value:0mul:z:0*
T0*
_output_shapes

:uu�
PartitionedCallPartitionedCalladd:z:0matrix_transpose/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099~
einsum/Einsum/ReadVariableOpReadVariableOp%einsum_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum/EinsumEinsum$einsum/Einsum/ReadVariableOp:value:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_1/EinsumEinsummatrix_transpose/transpose:y:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->jr
!matrix_transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose_1/transpose	TransposeReshape:output:0*matrix_transpose_1/transpose/perm:output:0*
T0*'
_output_shapes
:u���������W

eye_1/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?N
eye_1/diag/kConst*
_output_shapes
: *
dtype0*
value	B : ^
eye_1/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������^
eye_1/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
eye_1/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �

eye_1/diagMatrixDiagV3eye_1/ones:output:0eye_1/diag/k:output:0eye_1/diag/num_rows:output:0eye_1/diag/num_cols:output:0!eye_1/diag/padding_value:output:0*
T0*
_output_shapes

:uuL
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?\
mul_1Mulmul_1/x:output:0eye_1/diag:output:0*
T0*
_output_shapes

:uuj
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes

:uu*
dtype0\
add_1AddV2ReadVariableOp_1:value:0	mul_1:z:0*
T0*
_output_shapes

:uu�
PartitionedCall_1PartitionedCall	add_1:z:0 matrix_transpose_1/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099�
einsum_2/Einsum/ReadVariableOpReadVariableOp'einsum_2_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum_2/EinsumEinsum&einsum_2/Einsum/ReadVariableOp:value:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_3/EinsumEinsum matrix_transpose_1/transpose:y:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->j�
stackPackeinsum/Einsum:output:0einsum_2/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis����������
stack_1Packeinsum_1/Einsum:output:0einsum_3/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis���������P
SqrtSqrtstack_1:output:0*
T0*'
_output_shapes
:���������L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AZ
mul_2Mulmul_2/x:output:0Sqrt:y:0*
T0*'
_output_shapes
:���������[
add_2AddV2stack:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������N
ShapeShapeobservation*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������w
ArgMaxArgMax	add_2:z:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������*
output_type0T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0*
_output_shapes
: \

Identity_1IdentityArgMax:output:0^NoOp*
T0*#
_output_shapes
:���������[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^einsum/Einsum/ReadVariableOp^einsum_2/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������:���������:���������:���������u: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12<
einsum/Einsum/ReadVariableOpeinsum/Einsum/ReadVariableOp2@
einsum_2/Einsum/ReadVariableOpeinsum_2/Einsum/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:TP
'
_output_shapes
:���������u
%
_user_specified_nameobservation:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
:__inference_signature_wrapper_function_with_signature_2194
discount
observation

reward
	step_type
unknown:uu
	unknown_0:u
	unknown_1:uu
	unknown_2:u
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *1
f,R*
(__inference_function_with_signature_2177k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������:���������u:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
0/discount:VR
'
_output_shapes
:���������u
'
_user_specified_name0/observation:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:PL
#
_output_shapes
:���������
%
_user_specified_name0/step_type:$ 

_user_specified_name2184:$ 

_user_specified_name2186:$ 

_user_specified_name2188:$ 

_user_specified_name2190
�X
�
&__inference_polymorphic_action_fn_2166
	time_step
time_step_1
time_step_2
time_step_3)
readvariableop_resource:uu3
%einsum_einsum_readvariableop_resource:u+
readvariableop_1_resource:uu5
'einsum_2_einsum_readvariableop_resource:u
identity��ReadVariableOp�ReadVariableOp_1�einsum/Einsum/ReadVariableOp�einsum_2/Einsum/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����u   i
ReshapeReshapetime_step_3Reshape/shape:output:0*
T0*'
_output_shapes
:���������up
matrix_transpose/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose/transpose	TransposeReshape:output:0(matrix_transpose/transpose/perm:output:0*
T0*'
_output_shapes
:u���������U
eye/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?L

eye/diag/kConst*
_output_shapes
: *
dtype0*
value	B : \
eye/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
eye/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������[
eye/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
eye/diagMatrixDiagV3eye/ones:output:0eye/diag/k:output:0eye/diag/num_rows:output:0eye/diag/num_cols:output:0eye/diag/padding_value:output:0*
T0*
_output_shapes

:uuJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
mulMulmul/x:output:0eye/diag:output:0*
T0*
_output_shapes

:uuf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:uu*
dtype0V
addAddV2ReadVariableOp:value:0mul:z:0*
T0*
_output_shapes

:uu�
PartitionedCallPartitionedCalladd:z:0matrix_transpose/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099~
einsum/Einsum/ReadVariableOpReadVariableOp%einsum_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum/EinsumEinsum$einsum/Einsum/ReadVariableOp:value:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_1/EinsumEinsummatrix_transpose/transpose:y:0PartitionedCall:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->jr
!matrix_transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
matrix_transpose_1/transpose	TransposeReshape:output:0*matrix_transpose_1/transpose/perm:output:0*
T0*'
_output_shapes
:u���������W

eye_1/onesConst*
_output_shapes
:u*
dtype0*
valueBu*  �?N
eye_1/diag/kConst*
_output_shapes
: *
dtype0*
value	B : ^
eye_1/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
���������^
eye_1/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
eye_1/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �

eye_1/diagMatrixDiagV3eye_1/ones:output:0eye_1/diag/k:output:0eye_1/diag/num_rows:output:0eye_1/diag/num_cols:output:0!eye_1/diag/padding_value:output:0*
T0*
_output_shapes

:uuL
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?\
mul_1Mulmul_1/x:output:0eye_1/diag:output:0*
T0*
_output_shapes

:uuj
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes

:uu*
dtype0\
add_1AddV2ReadVariableOp_1:value:0	mul_1:z:0*
T0*
_output_shapes

:uu�
PartitionedCall_1PartitionedCall	add_1:z:0 matrix_transpose_1/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:u���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_conjugate_gradient_2099�
einsum_2/Einsum/ReadVariableOpReadVariableOp'einsum_2_einsum_readvariableop_resource*
_output_shapes
:u*
dtype0�
einsum_2/EinsumEinsum&einsum_2/Einsum/ReadVariableOp:value:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation	j,jk->k�
einsum_3/EinsumEinsum matrix_transpose_1/transpose:y:0PartitionedCall_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->j�
stackPackeinsum/Einsum:output:0einsum_2/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis����������
stack_1Packeinsum_1/Einsum:output:0einsum_3/Einsum:output:0*
N*
T0*'
_output_shapes
:���������*
axis���������P
SqrtSqrtstack_1:output:0*
T0*'
_output_shapes
:���������L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AZ
mul_2Mulmul_2/x:output:0Sqrt:y:0*
T0*'
_output_shapes
:���������[
add_2AddV2stack:output:0	mul_2:z:0*
T0*'
_output_shapes
:���������N
ShapeShapetime_step_3*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������w
ArgMaxArgMax	add_2:z:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������*
output_type0T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB g
Deterministic/sample/ShapeShapeArgMax:output:0*
T0*
_output_shapes
::��\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastToArgMax:output:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:����������
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
::��t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Y
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value	B :�
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^einsum/Einsum/ReadVariableOp^einsum_2/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������:���������:���������:���������u: : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12<
einsum/Einsum/ReadVariableOpeinsum/Einsum/ReadVariableOp2@
einsum_2/Einsum/ReadVariableOpeinsum_2/Einsum/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:RN
'
_output_shapes
:���������u
#
_user_specified_name	time_step:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�4
�
while_body_2010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_placeholder_5
while_strided_slice_0
while_shape_b_mat_0
while_matmul_a_mat_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_identity_7
while_strided_slice
while_shape_b_mat
while_matmul_a_matT
while/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *���.u
while/GreaterGreaterwhile_placeholder_4while/Greater/y:output:0*
T0*#
_output_shapes
:���������V
while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
while/ExpandDims
ExpandDimswhile/Greater:z:0while/ExpandDims/dim:output:0*
T0
*'
_output_shapes
:���������\
while/ShapeShapewhile_shape_b_mat_0*
T0*
_output_shapes
::��e
while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
while/strided_slice_1StridedSlicewhile/Shape:output:0$while/strided_slice_1/stack:output:0&while/strided_slice_1/stack_1:output:0&while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
while/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :�
while/Tile/multiplesPackwhile/strided_slice_1:output:0while/Tile/multiples/1:output:0*
N*
T0*
_output_shapes
:~

while/TileTilewhile/ExpandDims:output:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:u���������s
while/MatMulMatMulwhile_matmul_a_mat_0while_placeholder_2*
T0*'
_output_shapes
:u���������o
	while/mulMulwhile_placeholder_2while/MatMul:product:0*
T0*'
_output_shapes
:u���������]
while/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : s
	while/SumSumwhile/mul:z:0$while/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:���������o
while/truedivRealDivwhile_placeholder_4while/Sum:output:0*
T0*#
_output_shapes
:���������l
while/Mul_1Mulwhile_placeholder_2while/truediv:z:0*
T0*'
_output_shapes
:u���������j
	while/addAddV2while_placeholder_1while/Mul_1:z:0*
T0*'
_output_shapes
:u����������
while/SelectV2SelectV2while/Tile:output:0while/add:z:0while_placeholder_1*
T0*'
_output_shapes
:u���������o
while/Mul_2Mulwhile/MatMul:product:0while/truediv:z:0*
T0*'
_output_shapes
:u���������h
	while/subSubwhile_placeholder_3while/Mul_2:z:0*
T0*'
_output_shapes
:u����������
while/SelectV2_1SelectV2while/Tile:output:0while/sub:z:0while_placeholder_3*
T0*'
_output_shapes
:u����������
while/einsum/EinsumEinsumwhile/SelectV2_1:output:0while/SelectV2_1:output:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->j�
while/SelectV2_2SelectV2while/Greater:z:0while/einsum/Einsum:output:0while_placeholder_5*
T0*#
_output_shapes
:���������x
while/truediv_1RealDivwhile/SelectV2_2:output:0while_placeholder_4*
T0*#
_output_shapes
:���������n
while/Mul_3Mulwhile_placeholder_2while/truediv_1:z:0*
T0*'
_output_shapes
:u���������r
while/add_1AddV2while/SelectV2_1:output:0while/Mul_3:z:0*
T0*'
_output_shapes
:u����������
while/SelectV2_3SelectV2while/Tile:output:0while/add_1:z:0while_placeholder_2*
T0*'
_output_shapes
:u����������
while/SelectV2_4SelectV2while/Greater:z:0while/SelectV2_2:output:0while_placeholder_4*
T0*#
_output_shapes
:���������O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: g
while/Identity_3Identitywhile/SelectV2:output:0*
T0*'
_output_shapes
:u���������i
while/Identity_4Identitywhile/SelectV2_3:output:0*
T0*'
_output_shapes
:u���������i
while/Identity_5Identitywhile/SelectV2_1:output:0*
T0*'
_output_shapes
:u���������e
while/Identity_6Identitywhile/SelectV2_4:output:0*
T0*#
_output_shapes
:���������e
while/Identity_7Identitywhile/SelectV2_2:output:0*
T0*#
_output_shapes
:���������")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"-
while_identity_7while/Identity_7:output:0"*
while_matmul_a_matwhile_matmul_a_mat_0"(
while_shape_b_matwhile_shape_b_mat_0",
while_strided_slicewhile_strided_slice_0*(
_construction_contextkEagerRuntime*�
_input_shapes~
|: : : :u���������:u���������:u���������:���������:���������: :u���������:uu:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :-)
'
_output_shapes
:u���������:-)
'
_output_shapes
:u���������:-)
'
_output_shapes
:u���������:)%
#
_output_shapes
:���������:)%
#
_output_shapes
:���������:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:N	J
'
_output_shapes
:u���������

_user_specified_nameb_mat:E
A

_output_shapes

:uu

_user_specified_namea_mat
�F
�
__inference__traced_save_2536
file_prefix,
"read_disablecopyonread_global_step:	 .
read_1_disablecopyonread_a_0:uu.
read_2_disablecopyonread_a_1:uu*
read_3_disablecopyonread_b_0:u*
read_4_disablecopyonread_b_1:u0
&read_5_disablecopyonread_num_samples_0: 0
&read_6_disablecopyonread_num_samples_1: 0
read_7_disablecopyonread_theta:u
savev2_const
identity_17��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: t
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_global_step"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_global_step^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	a
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: p
Read_1/DisableCopyOnReadDisableCopyOnReadread_1_disablecopyonread_a_0"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpread_1_disablecopyonread_a_0^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:uu*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:uuc

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:uup
Read_2/DisableCopyOnReadDisableCopyOnReadread_2_disablecopyonread_a_1"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpread_2_disablecopyonread_a_1^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:uu*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:uuc

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:uup
Read_3/DisableCopyOnReadDisableCopyOnReadread_3_disablecopyonread_b_0"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpread_3_disablecopyonread_b_0^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:u*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:u_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:up
Read_4/DisableCopyOnReadDisableCopyOnReadread_4_disablecopyonread_b_1"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOpread_4_disablecopyonread_b_1^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:u*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:u_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:uz
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_num_samples_0"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_num_samples_0^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_num_samples_1"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_num_samples_1^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_7/DisableCopyOnReadDisableCopyOnReadread_7_disablecopyonread_theta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpread_7_disablecopyonread_theta^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:u*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ue
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:u�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_16Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_17IdentityIdentity_16:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp*
_output_shapes
 "#
identity_17Identity_17:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameglobal_step:#

_user_specified_namea_0:#

_user_specified_namea_1:#

_user_specified_nameb_0:#

_user_specified_nameb_1:-)
'
_user_specified_namenum_samples_0:-)
'
_user_specified_namenum_samples_1:%!

_user_specified_nametheta:=	9

_output_shapes
: 

_user_specified_nameConst
�
_
__inference_<lambda>_211!
readvariableop_resource:	 
identity	��ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: 3
NoOpNoOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp:( $
"
_user_specified_name
resource
�
�
while_cond_2009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_placeholder_5
while_less_strided_slice2
.while_while_cond_2009___redundant_placeholder02
.while_while_cond_2009___redundant_placeholder1
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: U

while/SqrtSqrtwhile_placeholder_5*
T0*#
_output_shapes
:���������U
while/ConstConst*
_output_shapes
:*
dtype0*
valueB: W
	while/MaxMaxwhile/Sqrt:y:0while/Const:output:0*
T0*
_output_shapes
: T
while/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *���.g
while/GreaterGreaterwhile/Max:output:0while/Greater/y:output:0*
T0*
_output_shapes
: Y
while/LogicalAnd
LogicalAndwhile/Less:z:0while/Greater:z:0*
_output_shapes
: Q
while/IdentityIdentitywhile/LogicalAnd:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g: : : :u���������:u���������:u���������:���������:���������: :::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :-)
'
_output_shapes
:u���������:-)
'
_output_shapes
:u���������:-)
'
_output_shapes
:u���������:)%
#
_output_shapes
:���������:)%
#
_output_shapes
:���������:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:	

_output_shapes
::


_output_shapes
:
�
<
:__inference_signature_wrapper_function_with_signature_2222�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *1
f,R*
(__inference_function_with_signature_2219*(
_construction_contextkEagerRuntime*
_input_shapes 
�
h
(__inference_function_with_signature_2210
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *!
fR
__inference_<lambda>_211^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:$  

_user_specified_name2206
�
:
(__inference_function_with_signature_2200

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_get_initial_state_2199*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
I
#__inference_conjugate_gradient_2099	
a_mat	
b_mat
identityH
ShapeShapeb_mat*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP

zeros_like	ZerosLikeb_mat*
T0*'
_output_shapes
:u���������Y
MatMulMatMula_matzeros_like:y:0*
T0*'
_output_shapes
:u���������U
subSubb_matMatMul:product:0*
T0*'
_output_shapes
:u���������x
einsum/EinsumEinsumsub:z:0sub:z:0*
N*
T0*#
_output_shapes
:���������*
equation
ij,ij->jG
ConstConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0Const:output:0zeros_like:y:0sub:z:0sub:z:0einsum/Einsum:output:0einsum/Einsum:output:0strided_slice:output:0b_mata_mat*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*�
_output_shapes~
|: : : :u���������:u���������:u���������:���������:���������: :u���������:uu* 
_read_only_resource_inputs
 *
bodyR
while_body_2010*
condR
while_cond_2009*�
output_shapes~
|: : : :u���������:u���������:u���������:���������:���������: :u���������:uu*
parallel_iterationsV
IdentityIdentitywhile:output:3*
T0*'
_output_shapes
:u���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:uu:u���������:E A

_output_shapes

:uu

_user_specified_namea_mat:NJ
'
_output_shapes
:u���������

_user_specified_nameb_mat
�
�
(__inference_function_with_signature_2177
	step_type

reward
discount
observation
unknown:uu
	unknown_0:u
	unknown_1:uu
	unknown_2:u
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_polymorphic_action_fn_2166k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:���������:���������:���������:���������u: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:���������
%
_user_specified_name0/step_type:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:OK
#
_output_shapes
:���������
$
_user_specified_name
0/discount:VR
'
_output_shapes
:���������u
'
_user_specified_name0/observation:$ 

_user_specified_name2167:$ 

_user_specified_name2169:$ 

_user_specified_name2171:$ 

_user_specified_name2173
Y

__inference_<lambda>_213*(
_construction_contextkEagerRuntime*
_input_shapes 
�
4
"__inference_get_initial_state_2199

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
action�
4

0/discount&
action_0_discount:0���������
>
0/observation-
action_0_observation:0���������u
0
0/reward$
action_0_reward:0���������
6
0/step_type'
action_0_step_type:0���������6
action,
StatefulPartitionedCall:0���������tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:�5
�

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures"
_generic_user_object
:	 (2global_step
 "
trackable_dict_wrapper
R
0
1
2
3
4
5
6"
trackable_tuple_wrapper
a
_cov_matrix
_data_vector
_num_samples

_theta"
trackable_dict_wrapper
�
trace_0
trace_12�
&__inference_polymorphic_action_fn_2309
&__inference_polymorphic_action_fn_2396�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_02�
,__inference_polymorphic_distribution_fn_2458�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
trace_02�
"__inference_get_initial_state_2461�
���
FullArgSpec
args�
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�B�
__inference_<lambda>_213"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_<lambda>_211"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
`

action
get_initial_state
get_train_step
get_metadata"
signature_map
:uu2a_0
:uu2a_1
:u2b_0
:u2b_1
: 2num_samples_0
: 2num_samples_1
:u2theta
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�B�
&__inference_polymorphic_action_fn_2309	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_polymorphic_action_fn_2396time_step_step_typetime_step_rewardtime_step_discounttime_step_observation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_polymorphic_distribution_fn_2458	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_get_initial_state_2461
batch_size"�
���
FullArgSpec
args�
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_signature_wrapper_function_with_signature_2194
0/discount0/observation0/reward0/step_type"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_signature_wrapper_function_with_signature_2204
batch_size"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_signature_wrapper_function_with_signature_2217"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_signature_wrapper_function_with_signature_2222"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 @
__inference_<lambda>_211$�

� 
� "�
unknown 	0
__inference_<lambda>_213�

� 
� "� O
"__inference_get_initial_state_2461)"�
�
�

batch_size 
� "� �
&__inference_polymorphic_action_fn_2309����
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������u
� 
� "���

PolicyStep&
action�
action���������
state� �
info���

PolicyInfo
log_probability� 
predicted_rewards_mean� 7
0multiobjective_scalarized_predicted_rewards_mean� #
predicted_rewards_optimistic�  
predicted_rewards_sampled� 
bandit_policy_type� �
&__inference_polymorphic_action_fn_2396����
���
���
TimeStep6
	step_type)�&
time_step_step_type���������0
reward&�#
time_step_reward���������4
discount(�%
time_step_discount���������>
observation/�,
time_step_observation���������u
� 
� "���

PolicyStep&
action�
action���������
state� �
info���

PolicyInfo
log_probability� 
predicted_rewards_mean� 7
0multiobjective_scalarized_predicted_rewards_mean� #
predicted_rewards_optimistic�  
predicted_rewards_sampled� 
bandit_policy_type� �
,__inference_polymorphic_distribution_fn_2458����
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������u
� 
� "���

PolicyStep�
action������
`
B�?

atol� 

loc����������

rtol� 
L�I

allow_nan_statsp

namejDeterministic_1_1

validate_argsp 
�
j
parameters
� 
�
jname+tfp.distributions.Deterministic_ACTTypeSpec 
state� �
info���

PolicyInfo
log_probability� 
predicted_rewards_mean� 7
0multiobjective_scalarized_predicted_rewards_mean� #
predicted_rewards_optimistic�  
predicted_rewards_sampled� 
bandit_policy_type� �
:__inference_signature_wrapper_function_with_signature_2194����
� 
���
2
arg_0_discount �

0/discount���������
<
arg_0_observation'�$
0/observation���������u
.
arg_0_reward�
0/reward���������
4
arg_0_step_type!�
0/step_type���������"+�(
&
action�
action���������u
:__inference_signature_wrapper_function_with_signature_220470�-
� 
&�#
!

batch_size�

batch_size "� n
:__inference_signature_wrapper_function_with_signature_22170�

� 
� "�

int64�
int64 	R
:__inference_signature_wrapper_function_with_signature_2222�

� 
� "� 