ۃ
? ? 
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
E
AssignSubVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
?
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?"serve*1.13.12b'v1.13.1-0-g6612da8951'??
?
flatten_inputPlaceholder*
dtype0*/
_output_shapes
:?????????*$
shape:?????????
Z
flatten/ShapeShapeflatten_input*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
g
flatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
b
flatten/Reshape/shape/1Const*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
?
flatten/ReshapeReshapeflatten_inputflatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"  @   *
dtype0*
_output_shapes
:
?
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *?D??*
dtype0*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *?D?=*
dtype0*
_output_shapes
: 
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?@*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	?@
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	?@
?
dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape:	?@
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
?
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@dense/kernel
?
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:	?@
?
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?

dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
?
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:@
i
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	?@
?
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:?????????@
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:@
?
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:?????????@*
T0
S

dense/ReluReludense/BiasAdd*'
_output_shapes
:?????????@*
T0
?
-batch_normalization_v1/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*/
_class%
#!loc:@batch_normalization_v1/gamma*
valueB@*  ??
?
batch_normalization_v1/gammaVarHandleOp*
dtype0*
_output_shapes
: *-
shared_namebatch_normalization_v1/gamma*/
_class%
#!loc:@batch_normalization_v1/gamma*
	container *
shape:@
?
=batch_normalization_v1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_v1/gamma*
_output_shapes
: 
?
#batch_normalization_v1/gamma/AssignAssignVariableOpbatch_normalization_v1/gamma-batch_normalization_v1/gamma/Initializer/ones*
dtype0*/
_class%
#!loc:@batch_normalization_v1/gamma
?
0batch_normalization_v1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_v1/gamma*
dtype0*
_output_shapes
:@*/
_class%
#!loc:@batch_normalization_v1/gamma
?
-batch_normalization_v1/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_v1/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
batch_normalization_v1/betaVarHandleOp*.
_class$
" loc:@batch_normalization_v1/beta*
	container *
shape:@*
dtype0*
_output_shapes
: *,
shared_namebatch_normalization_v1/beta
?
<batch_normalization_v1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_v1/beta*
_output_shapes
: 
?
"batch_normalization_v1/beta/AssignAssignVariableOpbatch_normalization_v1/beta-batch_normalization_v1/beta/Initializer/zeros*.
_class$
" loc:@batch_normalization_v1/beta*
dtype0
?
/batch_normalization_v1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_v1/beta*
dtype0*
_output_shapes
:@*.
_class$
" loc:@batch_normalization_v1/beta
?
4batch_normalization_v1/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
?
"batch_normalization_v1/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *3
shared_name$"batch_normalization_v1/moving_mean*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
	container *
shape:@
?
Cbatch_normalization_v1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_v1/moving_mean*
_output_shapes
: 
?
)batch_normalization_v1/moving_mean/AssignAssignVariableOp"batch_normalization_v1/moving_mean4batch_normalization_v1/moving_mean/Initializer/zeros*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
dtype0
?
6batch_normalization_v1/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_v1/moving_mean*
dtype0*
_output_shapes
:@*5
_class+
)'loc:@batch_normalization_v1/moving_mean
?
7batch_normalization_v1/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
&batch_normalization_v1/moving_varianceVarHandleOp*7
shared_name(&batch_normalization_v1/moving_variance*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
: 
?
Gbatch_normalization_v1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_v1/moving_variance*
_output_shapes
: 
?
-batch_normalization_v1/moving_variance/AssignAssignVariableOp&batch_normalization_v1/moving_variance7batch_normalization_v1/moving_variance/Initializer/ones*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
dtype0
?
:batch_normalization_v1/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_v1/moving_variance*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
dtype0*
_output_shapes
:@
s
1batch_normalization_v1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
?
+batch_normalization_v1/keras_learning_phasePlaceholderWithDefault1batch_normalization_v1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 

5batch_normalization_v1/moments/mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
?
#batch_normalization_v1/moments/meanMean
dense/Relu5batch_normalization_v1/moments/mean/reduction_indices*
T0*
_output_shapes

:@*

Tidx0*
	keep_dims(
?
+batch_normalization_v1/moments/StopGradientStopGradient#batch_normalization_v1/moments/mean*
T0*
_output_shapes

:@
?
0batch_normalization_v1/moments/SquaredDifferenceSquaredDifference
dense/Relu+batch_normalization_v1/moments/StopGradient*
T0*'
_output_shapes
:?????????@
?
9batch_normalization_v1/moments/variance/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
?
'batch_normalization_v1/moments/varianceMean0batch_normalization_v1/moments/SquaredDifference9batch_normalization_v1/moments/variance/reduction_indices*
_output_shapes

:@*

Tidx0*
	keep_dims(*
T0
?
&batch_normalization_v1/moments/SqueezeSqueeze#batch_normalization_v1/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
?
(batch_normalization_v1/moments/Squeeze_1Squeeze'batch_normalization_v1/moments/variance*
_output_shapes
:@*
squeeze_dims
 *
T0
?
"batch_normalization_v1/cond/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: : 
w
$batch_normalization_v1/cond/switch_tIdentity$batch_normalization_v1/cond/Switch:1*
T0
*
_output_shapes
: 
u
$batch_normalization_v1/cond/switch_fIdentity"batch_normalization_v1/cond/Switch*
_output_shapes
: *
T0

}
#batch_normalization_v1/cond/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: 
?
$batch_normalization_v1/cond/Switch_1Switch&batch_normalization_v1/moments/Squeeze#batch_normalization_v1/cond/pred_id*
T0*9
_class/
-+loc:@batch_normalization_v1/moments/Squeeze* 
_output_shapes
:@:@
?
*batch_normalization_v1/cond/ReadVariableOpReadVariableOp1batch_normalization_v1/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
1batch_normalization_v1/cond/ReadVariableOp/SwitchSwitch"batch_normalization_v1/moving_mean#batch_normalization_v1/cond/pred_id*
T0*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
_output_shapes
: : 
?
!batch_normalization_v1/cond/MergeMerge*batch_normalization_v1/cond/ReadVariableOp&batch_normalization_v1/cond/Switch_1:1*
N*
_output_shapes

:@: *
T0
?
$batch_normalization_v1/cond_1/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_v1/cond_1/switch_tIdentity&batch_normalization_v1/cond_1/Switch:1*
_output_shapes
: *
T0

y
&batch_normalization_v1/cond_1/switch_fIdentity$batch_normalization_v1/cond_1/Switch*
_output_shapes
: *
T0


%batch_normalization_v1/cond_1/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: 
?
&batch_normalization_v1/cond_1/Switch_1Switch(batch_normalization_v1/moments/Squeeze_1%batch_normalization_v1/cond_1/pred_id*
T0*;
_class1
/-loc:@batch_normalization_v1/moments/Squeeze_1* 
_output_shapes
:@:@
?
,batch_normalization_v1/cond_1/ReadVariableOpReadVariableOp3batch_normalization_v1/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
3batch_normalization_v1/cond_1/ReadVariableOp/SwitchSwitch&batch_normalization_v1/moving_variance%batch_normalization_v1/cond_1/pred_id*
T0*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
_output_shapes
: : 
?
#batch_normalization_v1/cond_1/MergeMerge,batch_normalization_v1/cond_1/ReadVariableOp(batch_normalization_v1/cond_1/Switch_1:1*
N*
_output_shapes

:@: *
T0
?
$batch_normalization_v1/cond_2/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
_output_shapes
: : *
T0

{
&batch_normalization_v1/cond_2/switch_tIdentity&batch_normalization_v1/cond_2/Switch:1*
_output_shapes
: *
T0

y
&batch_normalization_v1/cond_2/switch_fIdentity$batch_normalization_v1/cond_2/Switch*
T0
*
_output_shapes
: 

%batch_normalization_v1/cond_2/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
_output_shapes
: *
T0

?
3batch_normalization_v1/cond_2/AssignMovingAvg/decayConst'^batch_normalization_v1/cond_2/switch_t*
dtype0*
_output_shapes
: *5
_class+
)'loc:@batch_normalization_v1/moving_mean*
valueB
 *
?#<
?
<batch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpEbatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
Cbatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch"batch_normalization_v1/moving_mean%batch_normalization_v1/cond_2/pred_id*
T0*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
_output_shapes
: : 
?
1batch_normalization_v1/cond_2/AssignMovingAvg/subSub<batch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp:batch_normalization_v1/cond_2/AssignMovingAvg/sub/Switch:1*
T0*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
_output_shapes
:@
?
8batch_normalization_v1/cond_2/AssignMovingAvg/sub/SwitchSwitch!batch_normalization_v1/cond/Merge%batch_normalization_v1/cond_2/pred_id*
T0*4
_class*
(&loc:@batch_normalization_v1/cond/Merge* 
_output_shapes
:@:@
?
1batch_normalization_v1/cond_2/AssignMovingAvg/mulMul1batch_normalization_v1/cond_2/AssignMovingAvg/sub3batch_normalization_v1/cond_2/AssignMovingAvg/decay*
T0*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
_output_shapes
:@
?
Abatch_normalization_v1/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpEbatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:11batch_normalization_v1/cond_2/AssignMovingAvg/mul*
dtype0*5
_class+
)'loc:@batch_normalization_v1/moving_mean
?
>batch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpEbatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1B^batch_normalization_v1/cond_2/AssignMovingAvg/AssignSubVariableOp*5
_class+
)'loc:@batch_normalization_v1/moving_mean*
dtype0*
_output_shapes
:@
?
,batch_normalization_v1/cond_2/ReadVariableOpReadVariableOpEbatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1B^batch_normalization_v1/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
?
.batch_normalization_v1/cond_2/ReadVariableOp_1ReadVariableOp5batch_normalization_v1/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
5batch_normalization_v1/cond_2/ReadVariableOp_1/SwitchSwitch"batch_normalization_v1/moving_mean%batch_normalization_v1/cond_2/pred_id*
_output_shapes
: : *
T0*5
_class+
)'loc:@batch_normalization_v1/moving_mean
?
#batch_normalization_v1/cond_2/MergeMerge.batch_normalization_v1/cond_2/ReadVariableOp_1,batch_normalization_v1/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
?
$batch_normalization_v1/cond_3/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_v1/cond_3/switch_tIdentity&batch_normalization_v1/cond_3/Switch:1*
T0
*
_output_shapes
: 
y
&batch_normalization_v1/cond_3/switch_fIdentity$batch_normalization_v1/cond_3/Switch*
T0
*
_output_shapes
: 

%batch_normalization_v1/cond_3/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
_output_shapes
: *
T0

?
3batch_normalization_v1/cond_3/AssignMovingAvg/decayConst'^batch_normalization_v1/cond_3/switch_t*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
valueB
 *
?#<*
dtype0*
_output_shapes
: 
?
<batch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpEbatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
Cbatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch&batch_normalization_v1/moving_variance%batch_normalization_v1/cond_3/pred_id*
T0*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
_output_shapes
: : 
?
1batch_normalization_v1/cond_3/AssignMovingAvg/subSub<batch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp:batch_normalization_v1/cond_3/AssignMovingAvg/sub/Switch:1*
T0*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
_output_shapes
:@
?
8batch_normalization_v1/cond_3/AssignMovingAvg/sub/SwitchSwitch#batch_normalization_v1/cond_1/Merge%batch_normalization_v1/cond_3/pred_id*
T0*6
_class,
*(loc:@batch_normalization_v1/cond_1/Merge* 
_output_shapes
:@:@
?
1batch_normalization_v1/cond_3/AssignMovingAvg/mulMul1batch_normalization_v1/cond_3/AssignMovingAvg/sub3batch_normalization_v1/cond_3/AssignMovingAvg/decay*
T0*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
_output_shapes
:@
?
Abatch_normalization_v1/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpEbatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:11batch_normalization_v1/cond_3/AssignMovingAvg/mul*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
dtype0
?
>batch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpEbatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1B^batch_normalization_v1/cond_3/AssignMovingAvg/AssignSubVariableOp*9
_class/
-+loc:@batch_normalization_v1/moving_variance*
dtype0*
_output_shapes
:@
?
,batch_normalization_v1/cond_3/ReadVariableOpReadVariableOpEbatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1B^batch_normalization_v1/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
?
.batch_normalization_v1/cond_3/ReadVariableOp_1ReadVariableOp5batch_normalization_v1/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
5batch_normalization_v1/cond_3/ReadVariableOp_1/SwitchSwitch&batch_normalization_v1/moving_variance%batch_normalization_v1/cond_3/pred_id*
_output_shapes
: : *
T0*9
_class/
-+loc:@batch_normalization_v1/moving_variance
?
#batch_normalization_v1/cond_3/MergeMerge.batch_normalization_v1/cond_3/ReadVariableOp_1,batch_normalization_v1/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
k
&batch_normalization_v1/batchnorm/add/yConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
$batch_normalization_v1/batchnorm/addAdd#batch_normalization_v1/cond_1/Merge&batch_normalization_v1/batchnorm/add/y*
T0*
_output_shapes
:@
z
&batch_normalization_v1/batchnorm/RsqrtRsqrt$batch_normalization_v1/batchnorm/add*
T0*
_output_shapes
:@
?
3batch_normalization_v1/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization_v1/gamma*
dtype0*
_output_shapes
:@
?
$batch_normalization_v1/batchnorm/mulMul&batch_normalization_v1/batchnorm/Rsqrt3batch_normalization_v1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@
?
&batch_normalization_v1/batchnorm/mul_1Mul
dense/Relu$batch_normalization_v1/batchnorm/mul*
T0*'
_output_shapes
:?????????@
?
&batch_normalization_v1/batchnorm/mul_2Mul!batch_normalization_v1/cond/Merge$batch_normalization_v1/batchnorm/mul*
T0*
_output_shapes
:@
?
/batch_normalization_v1/batchnorm/ReadVariableOpReadVariableOpbatch_normalization_v1/beta*
dtype0*
_output_shapes
:@
?
$batch_normalization_v1/batchnorm/subSub/batch_normalization_v1/batchnorm/ReadVariableOp&batch_normalization_v1/batchnorm/mul_2*
T0*
_output_shapes
:@
?
&batch_normalization_v1/batchnorm/add_1Add&batch_normalization_v1/batchnorm/mul_1$batch_normalization_v1/batchnorm/sub*
T0*'
_output_shapes
:?????????@
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
?
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *׳]?*
dtype0*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *׳]>
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*
T0*!
_class
loc:@dense_1/kernel
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:@@
?
dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:@@
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
?
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
?
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:@@
?
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
?
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
?
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:@@
?
dense_1/MatMulMatMul&batch_normalization_v1/batchnorm/add_1dense_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:?????????@*
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:@
?
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:?????????@
?
/batch_normalization_v1_1/gamma/Initializer/onesConst*1
_class'
%#loc:@batch_normalization_v1_1/gamma*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
batch_normalization_v1_1/gammaVarHandleOp*
dtype0*
_output_shapes
: */
shared_name batch_normalization_v1_1/gamma*1
_class'
%#loc:@batch_normalization_v1_1/gamma*
	container *
shape:@
?
?batch_normalization_v1_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_v1_1/gamma*
_output_shapes
: 
?
%batch_normalization_v1_1/gamma/AssignAssignVariableOpbatch_normalization_v1_1/gamma/batch_normalization_v1_1/gamma/Initializer/ones*1
_class'
%#loc:@batch_normalization_v1_1/gamma*
dtype0
?
2batch_normalization_v1_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_v1_1/gamma*
dtype0*
_output_shapes
:@*1
_class'
%#loc:@batch_normalization_v1_1/gamma
?
/batch_normalization_v1_1/beta/Initializer/zerosConst*0
_class&
$"loc:@batch_normalization_v1_1/beta*
valueB@*    *
dtype0*
_output_shapes
:@
?
batch_normalization_v1_1/betaVarHandleOp*
dtype0*
_output_shapes
: *.
shared_namebatch_normalization_v1_1/beta*0
_class&
$"loc:@batch_normalization_v1_1/beta*
	container *
shape:@
?
>batch_normalization_v1_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_v1_1/beta*
_output_shapes
: 
?
$batch_normalization_v1_1/beta/AssignAssignVariableOpbatch_normalization_v1_1/beta/batch_normalization_v1_1/beta/Initializer/zeros*
dtype0*0
_class&
$"loc:@batch_normalization_v1_1/beta
?
1batch_normalization_v1_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_v1_1/beta*0
_class&
$"loc:@batch_normalization_v1_1/beta*
dtype0*
_output_shapes
:@
?
6batch_normalization_v1_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
valueB@*    
?
$batch_normalization_v1_1/moving_meanVarHandleOp*
dtype0*
_output_shapes
: *5
shared_name&$batch_normalization_v1_1/moving_mean*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
	container *
shape:@
?
Ebatch_normalization_v1_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp$batch_normalization_v1_1/moving_mean*
_output_shapes
: 
?
+batch_normalization_v1_1/moving_mean/AssignAssignVariableOp$batch_normalization_v1_1/moving_mean6batch_normalization_v1_1/moving_mean/Initializer/zeros*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
dtype0
?
8batch_normalization_v1_1/moving_mean/Read/ReadVariableOpReadVariableOp$batch_normalization_v1_1/moving_mean*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
dtype0*
_output_shapes
:@
?
9batch_normalization_v1_1/moving_variance/Initializer/onesConst*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
valueB@*  ??*
dtype0*
_output_shapes
:@
?
(batch_normalization_v1_1/moving_varianceVarHandleOp*
dtype0*
_output_shapes
: *9
shared_name*(batch_normalization_v1_1/moving_variance*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
	container *
shape:@
?
Ibatch_normalization_v1_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp(batch_normalization_v1_1/moving_variance*
_output_shapes
: 
?
/batch_normalization_v1_1/moving_variance/AssignAssignVariableOp(batch_normalization_v1_1/moving_variance9batch_normalization_v1_1/moving_variance/Initializer/ones*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
dtype0
?
<batch_normalization_v1_1/moving_variance/Read/ReadVariableOpReadVariableOp(batch_normalization_v1_1/moving_variance*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
dtype0*
_output_shapes
:@
?
7batch_normalization_v1_1/moments/mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
?
%batch_normalization_v1_1/moments/meanMeandense_1/Relu7batch_normalization_v1_1/moments/mean/reduction_indices*
T0*
_output_shapes

:@*

Tidx0*
	keep_dims(
?
-batch_normalization_v1_1/moments/StopGradientStopGradient%batch_normalization_v1_1/moments/mean*
T0*
_output_shapes

:@
?
2batch_normalization_v1_1/moments/SquaredDifferenceSquaredDifferencedense_1/Relu-batch_normalization_v1_1/moments/StopGradient*
T0*'
_output_shapes
:?????????@
?
;batch_normalization_v1_1/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
?
)batch_normalization_v1_1/moments/varianceMean2batch_normalization_v1_1/moments/SquaredDifference;batch_normalization_v1_1/moments/variance/reduction_indices*
T0*
_output_shapes

:@*

Tidx0*
	keep_dims(
?
(batch_normalization_v1_1/moments/SqueezeSqueeze%batch_normalization_v1_1/moments/mean*
T0*
_output_shapes
:@*
squeeze_dims
 
?
*batch_normalization_v1_1/moments/Squeeze_1Squeeze)batch_normalization_v1_1/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:@
?
$batch_normalization_v1_1/cond/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: : 
{
&batch_normalization_v1_1/cond/switch_tIdentity&batch_normalization_v1_1/cond/Switch:1*
_output_shapes
: *
T0

y
&batch_normalization_v1_1/cond/switch_fIdentity$batch_normalization_v1_1/cond/Switch*
T0
*
_output_shapes
: 

%batch_normalization_v1_1/cond/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: 
?
&batch_normalization_v1_1/cond/Switch_1Switch(batch_normalization_v1_1/moments/Squeeze%batch_normalization_v1_1/cond/pred_id*
T0*;
_class1
/-loc:@batch_normalization_v1_1/moments/Squeeze* 
_output_shapes
:@:@
?
,batch_normalization_v1_1/cond/ReadVariableOpReadVariableOp3batch_normalization_v1_1/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
3batch_normalization_v1_1/cond/ReadVariableOp/SwitchSwitch$batch_normalization_v1_1/moving_mean%batch_normalization_v1_1/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
_output_shapes
: : 
?
#batch_normalization_v1_1/cond/MergeMerge,batch_normalization_v1_1/cond/ReadVariableOp(batch_normalization_v1_1/cond/Switch_1:1*
T0*
N*
_output_shapes

:@: 
?
&batch_normalization_v1_1/cond_1/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
_output_shapes
: : *
T0


(batch_normalization_v1_1/cond_1/switch_tIdentity(batch_normalization_v1_1/cond_1/Switch:1*
_output_shapes
: *
T0

}
(batch_normalization_v1_1/cond_1/switch_fIdentity&batch_normalization_v1_1/cond_1/Switch*
_output_shapes
: *
T0

?
'batch_normalization_v1_1/cond_1/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
_output_shapes
: *
T0

?
(batch_normalization_v1_1/cond_1/Switch_1Switch*batch_normalization_v1_1/moments/Squeeze_1'batch_normalization_v1_1/cond_1/pred_id*
T0*=
_class3
1/loc:@batch_normalization_v1_1/moments/Squeeze_1* 
_output_shapes
:@:@
?
.batch_normalization_v1_1/cond_1/ReadVariableOpReadVariableOp5batch_normalization_v1_1/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes
:@
?
5batch_normalization_v1_1/cond_1/ReadVariableOp/SwitchSwitch(batch_normalization_v1_1/moving_variance'batch_normalization_v1_1/cond_1/pred_id*
_output_shapes
: : *
T0*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance
?
%batch_normalization_v1_1/cond_1/MergeMerge.batch_normalization_v1_1/cond_1/ReadVariableOp*batch_normalization_v1_1/cond_1/Switch_1:1*
T0*
N*
_output_shapes

:@: 
?
&batch_normalization_v1_1/cond_2/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: : 

(batch_normalization_v1_1/cond_2/switch_tIdentity(batch_normalization_v1_1/cond_2/Switch:1*
_output_shapes
: *
T0

}
(batch_normalization_v1_1/cond_2/switch_fIdentity&batch_normalization_v1_1/cond_2/Switch*
_output_shapes
: *
T0

?
'batch_normalization_v1_1/cond_2/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
_output_shapes
: *
T0

?
5batch_normalization_v1_1/cond_2/AssignMovingAvg/decayConst)^batch_normalization_v1_1/cond_2/switch_t*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
valueB
 *
?#<*
dtype0*
_output_shapes
: 
?
>batch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
Ebatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/SwitchSwitch$batch_normalization_v1_1/moving_mean'batch_normalization_v1_1/cond_2/pred_id*
T0*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
_output_shapes
: : 
?
3batch_normalization_v1_1/cond_2/AssignMovingAvg/subSub>batch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp<batch_normalization_v1_1/cond_2/AssignMovingAvg/sub/Switch:1*
_output_shapes
:@*
T0*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean
?
:batch_normalization_v1_1/cond_2/AssignMovingAvg/sub/SwitchSwitch#batch_normalization_v1_1/cond/Merge'batch_normalization_v1_1/cond_2/pred_id*
T0*6
_class,
*(loc:@batch_normalization_v1_1/cond/Merge* 
_output_shapes
:@:@
?
3batch_normalization_v1_1/cond_2/AssignMovingAvg/mulMul3batch_normalization_v1_1/cond_2/AssignMovingAvg/sub5batch_normalization_v1_1/cond_2/AssignMovingAvg/decay*
T0*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
_output_shapes
:@
?
Cbatch_normalization_v1_1/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:13batch_normalization_v1_1/cond_2/AssignMovingAvg/mul*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
dtype0
?
@batch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^batch_normalization_v1_1/cond_2/AssignMovingAvg/AssignSubVariableOp*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
dtype0*
_output_shapes
:@
?
.batch_normalization_v1_1/cond_2/ReadVariableOpReadVariableOpGbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1D^batch_normalization_v1_1/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
?
0batch_normalization_v1_1/cond_2/ReadVariableOp_1ReadVariableOp7batch_normalization_v1_1/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
7batch_normalization_v1_1/cond_2/ReadVariableOp_1/SwitchSwitch$batch_normalization_v1_1/moving_mean'batch_normalization_v1_1/cond_2/pred_id*
T0*7
_class-
+)loc:@batch_normalization_v1_1/moving_mean*
_output_shapes
: : 
?
%batch_normalization_v1_1/cond_2/MergeMerge0batch_normalization_v1_1/cond_2/ReadVariableOp_1.batch_normalization_v1_1/cond_2/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
?
&batch_normalization_v1_1/cond_3/SwitchSwitch+batch_normalization_v1/keras_learning_phase+batch_normalization_v1/keras_learning_phase*
_output_shapes
: : *
T0


(batch_normalization_v1_1/cond_3/switch_tIdentity(batch_normalization_v1_1/cond_3/Switch:1*
T0
*
_output_shapes
: 
}
(batch_normalization_v1_1/cond_3/switch_fIdentity&batch_normalization_v1_1/cond_3/Switch*
T0
*
_output_shapes
: 
?
'batch_normalization_v1_1/cond_3/pred_idIdentity+batch_normalization_v1/keras_learning_phase*
T0
*
_output_shapes
: 
?
5batch_normalization_v1_1/cond_3/AssignMovingAvg/decayConst)^batch_normalization_v1_1/cond_3/switch_t*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
valueB
 *
?#<*
dtype0*
_output_shapes
: 
?
>batch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1*
dtype0*
_output_shapes
:@
?
Ebatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/SwitchSwitch(batch_normalization_v1_1/moving_variance'batch_normalization_v1_1/cond_3/pred_id*
T0*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
_output_shapes
: : 
?
3batch_normalization_v1_1/cond_3/AssignMovingAvg/subSub>batch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp<batch_normalization_v1_1/cond_3/AssignMovingAvg/sub/Switch:1*
T0*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
_output_shapes
:@
?
:batch_normalization_v1_1/cond_3/AssignMovingAvg/sub/SwitchSwitch%batch_normalization_v1_1/cond_1/Merge'batch_normalization_v1_1/cond_3/pred_id*
T0*8
_class.
,*loc:@batch_normalization_v1_1/cond_1/Merge* 
_output_shapes
:@:@
?
3batch_normalization_v1_1/cond_3/AssignMovingAvg/mulMul3batch_normalization_v1_1/cond_3/AssignMovingAvg/sub5batch_normalization_v1_1/cond_3/AssignMovingAvg/decay*
_output_shapes
:@*
T0*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance
?
Cbatch_normalization_v1_1/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:13batch_normalization_v1_1/cond_3/AssignMovingAvg/mul*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
dtype0
?
@batch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^batch_normalization_v1_1/cond_3/AssignMovingAvg/AssignSubVariableOp*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
dtype0*
_output_shapes
:@
?
.batch_normalization_v1_1/cond_3/ReadVariableOpReadVariableOpGbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1D^batch_normalization_v1_1/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes
:@
?
0batch_normalization_v1_1/cond_3/ReadVariableOp_1ReadVariableOp7batch_normalization_v1_1/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes
:@
?
7batch_normalization_v1_1/cond_3/ReadVariableOp_1/SwitchSwitch(batch_normalization_v1_1/moving_variance'batch_normalization_v1_1/cond_3/pred_id*
T0*;
_class1
/-loc:@batch_normalization_v1_1/moving_variance*
_output_shapes
: : 
?
%batch_normalization_v1_1/cond_3/MergeMerge0batch_normalization_v1_1/cond_3/ReadVariableOp_1.batch_normalization_v1_1/cond_3/ReadVariableOp*
T0*
N*
_output_shapes

:@: 
m
(batch_normalization_v1_1/batchnorm/add/yConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
&batch_normalization_v1_1/batchnorm/addAdd%batch_normalization_v1_1/cond_1/Merge(batch_normalization_v1_1/batchnorm/add/y*
T0*
_output_shapes
:@
~
(batch_normalization_v1_1/batchnorm/RsqrtRsqrt&batch_normalization_v1_1/batchnorm/add*
T0*
_output_shapes
:@
?
5batch_normalization_v1_1/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization_v1_1/gamma*
dtype0*
_output_shapes
:@
?
&batch_normalization_v1_1/batchnorm/mulMul(batch_normalization_v1_1/batchnorm/Rsqrt5batch_normalization_v1_1/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes
:@
?
(batch_normalization_v1_1/batchnorm/mul_1Muldense_1/Relu&batch_normalization_v1_1/batchnorm/mul*
T0*'
_output_shapes
:?????????@
?
(batch_normalization_v1_1/batchnorm/mul_2Mul#batch_normalization_v1_1/cond/Merge&batch_normalization_v1_1/batchnorm/mul*
_output_shapes
:@*
T0
?
1batch_normalization_v1_1/batchnorm/ReadVariableOpReadVariableOpbatch_normalization_v1_1/beta*
dtype0*
_output_shapes
:@
?
&batch_normalization_v1_1/batchnorm/subSub1batch_normalization_v1_1/batchnorm/ReadVariableOp(batch_normalization_v1_1/batchnorm/mul_2*
T0*
_output_shapes
:@
?
(batch_normalization_v1_1/batchnorm/add_1Add(batch_normalization_v1_1/batchnorm/mul_1&batch_normalization_v1_1/batchnorm/sub*
T0*'
_output_shapes
:?????????@
?
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_2/kernel*
valueB"@   
   
?
-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
valueB
 *iʑ?
?
-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *iʑ>*
dtype0*
_output_shapes
: 
?
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@
*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 
?
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
?
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:@
*
T0*!
_class
loc:@dense_2/kernel
?
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@

?
dense_2/kernelVarHandleOp*!
_class
loc:@dense_2/kernel*
	container *
shape
:@
*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
?
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0
?
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@

?
dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB
*    *
dtype0*
_output_shapes
:

?
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
?
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
?
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:

l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:@

?
dense_2/MatMulMatMul(batch_normalization_v1_1/batchnorm/add_1dense_2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:?????????
*
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

?
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????

]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:?????????

?
)Adam/iterations/Initializer/initial_valueConst*"
_class
loc:@Adam/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
?
Adam/iterationsVarHandleOp*
shape: *
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 
?
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	
?
#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
?
!Adam/lr/Initializer/initial_valueConst*
_class
loc:@Adam/lr*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
Adam/lrVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
dtype0*
_class
loc:@Adam/lr
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr
?
%Adam/beta_1/Initializer/initial_valueConst*
_class
loc:@Adam/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
?
Adam/beta_1VarHandleOp*
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
?
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
?
%Adam/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2*
valueB
 *w??
?
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
?
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2
?
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/decay/Initializer/initial_valueConst*
_class
loc:@Adam/decay*
valueB
 *    *
dtype0*
_output_shapes
: 
?

Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
?
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
?
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay
?
dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
R
ConstConst*
valueB*  ??*
dtype0*
_output_shapes
:
?
dense_2_sample_weightsPlaceholderWithDefaultConst*
shape:?????????*
dtype0*#
_output_shapes
:?????????
v
total/Initializer/zerosConst*
_class

loc:@total*
valueB
 *    *
dtype0*
_output_shapes
: 
?
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
_class

loc:@count*
valueB
 *    
?
countVarHandleOp*
shared_namecount*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
?
&loss/dense_2_loss/MeanSquaredError/subSubdense_2/Softmaxdense_2_target*
T0*'
_output_shapes
:?????????

?
)loss/dense_2_loss/MeanSquaredError/SquareSquare&loss/dense_2_loss/MeanSquaredError/sub*
T0*'
_output_shapes
:?????????

?
9loss/dense_2_loss/MeanSquaredError/Mean/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
'loss/dense_2_loss/MeanSquaredError/MeanMean)loss/dense_2_loss/MeanSquaredError/Square9loss/dense_2_loss/MeanSquaredError/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:?????????
?
eloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_2_sample_weights*
T0*
out_type0*
_output_shapes
:
?
dloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
?
dloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape'loss/dense_2_loss/MeanSquaredError/Mean*
_output_shapes
:*
T0*
out_type0
?
closs/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
?
closs/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
?
aloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarEqualcloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar/xdloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchaloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalaraloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

?
oloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityoloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
?
oloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentitymloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
?
nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityaloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
?
oloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1Switchaloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarnloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*t
_classj
hfloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchcloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/ranknloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*v
_classl
jhloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switchdloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/ranknloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*w
_classm
kiloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentity?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentity?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentity?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConst?^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDims?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchdloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shapenloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*w
_classm
kiloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*w
_classm
kiloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConst?^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConst?^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConst?^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConst?^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDims?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitcheloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapenloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*x
_classn
ljloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*x
_classn
ljloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
validate_indices(*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSize?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConst?^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switch?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*?
_class?
??loc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMerge?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
?
lloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMerge?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Mergeqloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
?
]loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
?
_loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
?
_loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 
?
_loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
?
_loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/Const_4Const*:
value1B/ B)loss/dense_2_loss/MeanSquaredError/Mean:0*
dtype0*
_output_shapes
: 
?
_loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/Const_5Const*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
?
jloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchlloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Mergelloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
?
lloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentitylloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
?
lloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityjloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
?
kloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentitylloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
?
hloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
?
vloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentitylloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_ti^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*
_classu
sqloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Constm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Constm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Constm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Constm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Constm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*:
value1B/ B)loss/dense_2_loss/MeanSquaredError/Mean:0*
dtype0*
_output_shapes
: 
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Constm^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
?

jloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertqloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switchqloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
?
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchlloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Mergekloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*
_classu
sqloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
?
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Switcheloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapekloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*x
_classn
ljloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
?
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Switchdloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shapekloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*w
_classm
kiloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
?
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3Switchaloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalarkloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*t
_classj
hfloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar
?
xloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Identitylloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fk^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*
_classu
sqloc:@loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
?
iloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergexloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1vloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
?
Rloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/ones_like/ShapeShape'loss/dense_2_loss/MeanSquaredError/Meanj^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
?
Rloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/ones_like/ConstConstj^loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Lloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/ones_likeFillRloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/ones_like/ShapeRloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:?????????
?
Bloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weightsMuldense_2_sample_weightsLloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:?????????*
T0
?
4loss/dense_2_loss/MeanSquaredError/weighted_loss/MulMul'loss/dense_2_loss/MeanSquaredError/MeanBloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
?
6loss/dense_2_loss/MeanSquaredError/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
4loss/dense_2_loss/MeanSquaredError/weighted_loss/SumSum4loss/dense_2_loss/MeanSquaredError/weighted_loss/Mul6loss/dense_2_loss/MeanSquaredError/weighted_loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
?
=loss/dense_2_loss/MeanSquaredError/weighted_loss/num_elementsSize4loss/dense_2_loss/MeanSquaredError/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
: 
?
Bloss/dense_2_loss/MeanSquaredError/weighted_loss/num_elements/CastCast=loss/dense_2_loss/MeanSquaredError/weighted_loss/num_elements*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
{
8loss/dense_2_loss/MeanSquaredError/weighted_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
?
6loss/dense_2_loss/MeanSquaredError/weighted_loss/Sum_1Sum4loss/dense_2_loss/MeanSquaredError/weighted_loss/Sum8loss/dense_2_loss/MeanSquaredError/weighted_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
?
6loss/dense_2_loss/MeanSquaredError/weighted_loss/valueDivNoNan6loss/dense_2_loss/MeanSquaredError/weighted_loss/Sum_1Bloss/dense_2_loss/MeanSquaredError/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
t
loss/mulMul
loss/mul/x6loss/dense_2_loss/MeanSquaredError/weighted_loss/value*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:?????????
x
metrics/acc/CastCastmetrics/acc/Equal*
Truncate( *

DstT0*#
_output_shapes
:?????????*

SrcT0

[
metrics/acc/SizeSizemetrics/acc/Cast*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_1Castmetrics/acc/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
y
metrics/acc/SumSummetrics/acc/Castmetrics/acc/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
z
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp*
dtype0*
_output_shapes
: 
}
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_1^metrics/acc/ReadVariableOp*
dtype0
?
metrics/acc/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1^metrics/acc/ReadVariableOp*
dtype0*
_output_shapes
: 
?
%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 
?
metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
i
metrics/acc/ArgMax_2/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMax_2ArgMaxdense_2_targetmetrics/acc/ArgMax_2/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
i
metrics/acc/ArgMax_3/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMax_3ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_3/dimension*
output_type0	*#
_output_shapes
:?????????*

Tidx0*
T0
v
metrics/acc/Equal_1Equalmetrics/acc/ArgMax_2metrics/acc/ArgMax_3*
T0	*#
_output_shapes
:?????????
|
metrics/acc/Cast_2Castmetrics/acc/Equal_1*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:?????????
]
metrics/acc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

metrics/acc/MeanMeanmetrics/acc/Cast_2metrics/acc/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
M
VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpAdam/iterations*
_output_shapes
: 
a
VarIsInitializedOp_2VarIsInitializedOpbatch_normalization_v1_1/beta*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
Adam/decay*
_output_shapes
: 
P
VarIsInitializedOp_4VarIsInitializedOpdense/kernel*
_output_shapes
: 
P
VarIsInitializedOp_5VarIsInitializedOpdense_2/bias*
_output_shapes
: 
N
VarIsInitializedOp_6VarIsInitializedOp
dense/bias*
_output_shapes
: 
j
VarIsInitializedOp_7VarIsInitializedOp&batch_normalization_v1/moving_variance*
_output_shapes
: 
h
VarIsInitializedOp_8VarIsInitializedOp$batch_normalization_v1_1/moving_mean*
_output_shapes
: 
P
VarIsInitializedOp_9VarIsInitializedOpdense_1/bias*
_output_shapes
: 
g
VarIsInitializedOp_10VarIsInitializedOp"batch_normalization_v1/moving_mean*
_output_shapes
: 
P
VarIsInitializedOp_11VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
J
VarIsInitializedOp_12VarIsInitializedOptotal*
_output_shapes
: 
L
VarIsInitializedOp_13VarIsInitializedOpAdam/lr*
_output_shapes
: 
m
VarIsInitializedOp_14VarIsInitializedOp(batch_normalization_v1_1/moving_variance*
_output_shapes
: 
S
VarIsInitializedOp_15VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
J
VarIsInitializedOp_16VarIsInitializedOpcount*
_output_shapes
: 
a
VarIsInitializedOp_17VarIsInitializedOpbatch_normalization_v1/gamma*
_output_shapes
: 
S
VarIsInitializedOp_18VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
c
VarIsInitializedOp_19VarIsInitializedOpbatch_normalization_v1_1/gamma*
_output_shapes
: 
`
VarIsInitializedOp_20VarIsInitializedOpbatch_normalization_v1/beta*
_output_shapes
: 
?
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign#^batch_normalization_v1/beta/Assign$^batch_normalization_v1/gamma/Assign*^batch_normalization_v1/moving_mean/Assign.^batch_normalization_v1/moving_variance/Assign%^batch_normalization_v1_1/beta/Assign&^batch_normalization_v1_1/gamma/Assign,^batch_normalization_v1_1/moving_mean/Assign0^batch_normalization_v1_1/moving_variance/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^total/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
?
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_11f763a35f2e49119be4c25229f803db/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization_v1/betaBbatch_normalization_v1/gammaB"batch_normalization_v1/moving_meanB&batch_normalization_v1/moving_varianceBbatch_normalization_v1_1/betaBbatch_normalization_v1_1/gammaB$batch_normalization_v1_1/moving_meanB(batch_normalization_v1_1/moving_varianceB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*9
value0B.B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOp/batch_normalization_v1/beta/Read/ReadVariableOp0batch_normalization_v1/gamma/Read/ReadVariableOp6batch_normalization_v1/moving_mean/Read/ReadVariableOp:batch_normalization_v1/moving_variance/Read/ReadVariableOp1batch_normalization_v1_1/beta/Read/ReadVariableOp2batch_normalization_v1_1/gamma/Read/ReadVariableOp8batch_normalization_v1_1/moving_mean/Read/ReadVariableOp<batch_normalization_v1_1/moving_variance/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*!
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization_v1/betaBbatch_normalization_v1/gammaB"batch_normalization_v1/moving_meanB&batch_normalization_v1/moving_varianceBbatch_normalization_v1_1/betaBbatch_normalization_v1_1/gammaB$batch_normalization_v1_1/moving_meanB(batch_normalization_v1_1/moving_varianceB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*!
dtypes
2	*`
_output_shapesN
L:::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
f
save/AssignVariableOp_5AssignVariableOpbatch_normalization_v1/betasave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
g
save/AssignVariableOp_6AssignVariableOpbatch_normalization_v1/gammasave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
m
save/AssignVariableOp_7AssignVariableOp"batch_normalization_v1/moving_meansave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
q
save/AssignVariableOp_8AssignVariableOp&batch_normalization_v1/moving_variancesave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
i
save/AssignVariableOp_9AssignVariableOpbatch_normalization_v1_1/betasave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
k
save/AssignVariableOp_10AssignVariableOpbatch_normalization_v1_1/gammasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
q
save/AssignVariableOp_11AssignVariableOp$batch_normalization_v1_1/moving_meansave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
u
save/AssignVariableOp_12AssignVariableOp(batch_normalization_v1_1/moving_variancesave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
W
save/AssignVariableOp_13AssignVariableOp
dense/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Y
save/AssignVariableOp_14AssignVariableOpdense/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Y
save/AssignVariableOp_15AssignVariableOpdense_1/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
[
save/AssignVariableOp_16AssignVariableOpdense_1/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
Y
save/AssignVariableOp_17AssignVariableOpdense_2/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
[
save/AssignVariableOp_18AssignVariableOpdense_2/kernelsave/Identity_19*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
batch_normalization_v1/gamma:0#batch_normalization_v1/gamma/Assign2batch_normalization_v1/gamma/Read/ReadVariableOp:0(2/batch_normalization_v1/gamma/Initializer/ones:08
?
batch_normalization_v1/beta:0"batch_normalization_v1/beta/Assign1batch_normalization_v1/beta/Read/ReadVariableOp:0(2/batch_normalization_v1/beta/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
 batch_normalization_v1_1/gamma:0%batch_normalization_v1_1/gamma/Assign4batch_normalization_v1_1/gamma/Read/ReadVariableOp:0(21batch_normalization_v1_1/gamma/Initializer/ones:08
?
batch_normalization_v1_1/beta:0$batch_normalization_v1_1/beta/Assign3batch_normalization_v1_1/beta/Read/ReadVariableOp:0(21batch_normalization_v1_1/beta/Initializer/zeros:08
?
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
?
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08"??
cond_context????
?
%batch_normalization_v1/cond/cond_text%batch_normalization_v1/cond/pred_id:0&batch_normalization_v1/cond/switch_t:0 *?
&batch_normalization_v1/cond/Switch_1:0
&batch_normalization_v1/cond/Switch_1:1
%batch_normalization_v1/cond/pred_id:0
&batch_normalization_v1/cond/switch_t:0
(batch_normalization_v1/moments/Squeeze:0R
(batch_normalization_v1/moments/Squeeze:0&batch_normalization_v1/cond/Switch_1:1N
%batch_normalization_v1/cond/pred_id:0%batch_normalization_v1/cond/pred_id:0
?
'batch_normalization_v1/cond/cond_text_1%batch_normalization_v1/cond/pred_id:0&batch_normalization_v1/cond/switch_f:0*?
3batch_normalization_v1/cond/ReadVariableOp/Switch:0
,batch_normalization_v1/cond/ReadVariableOp:0
%batch_normalization_v1/cond/pred_id:0
&batch_normalization_v1/cond/switch_f:0
$batch_normalization_v1/moving_mean:0N
%batch_normalization_v1/cond/pred_id:0%batch_normalization_v1/cond/pred_id:0[
$batch_normalization_v1/moving_mean:03batch_normalization_v1/cond/ReadVariableOp/Switch:0
?
'batch_normalization_v1/cond_1/cond_text'batch_normalization_v1/cond_1/pred_id:0(batch_normalization_v1/cond_1/switch_t:0 *?
(batch_normalization_v1/cond_1/Switch_1:0
(batch_normalization_v1/cond_1/Switch_1:1
'batch_normalization_v1/cond_1/pred_id:0
(batch_normalization_v1/cond_1/switch_t:0
*batch_normalization_v1/moments/Squeeze_1:0V
*batch_normalization_v1/moments/Squeeze_1:0(batch_normalization_v1/cond_1/Switch_1:1R
'batch_normalization_v1/cond_1/pred_id:0'batch_normalization_v1/cond_1/pred_id:0
?
)batch_normalization_v1/cond_1/cond_text_1'batch_normalization_v1/cond_1/pred_id:0(batch_normalization_v1/cond_1/switch_f:0*?
5batch_normalization_v1/cond_1/ReadVariableOp/Switch:0
.batch_normalization_v1/cond_1/ReadVariableOp:0
'batch_normalization_v1/cond_1/pred_id:0
(batch_normalization_v1/cond_1/switch_f:0
(batch_normalization_v1/moving_variance:0a
(batch_normalization_v1/moving_variance:05batch_normalization_v1/cond_1/ReadVariableOp/Switch:0R
'batch_normalization_v1/cond_1/pred_id:0'batch_normalization_v1/cond_1/pred_id:0
?
'batch_normalization_v1/cond_2/cond_text'batch_normalization_v1/cond_2/pred_id:0(batch_normalization_v1/cond_2/switch_t:0 *?
#batch_normalization_v1/cond/Merge:0
Ebatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
>batch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp:0
@batch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp_1:0
5batch_normalization_v1/cond_2/AssignMovingAvg/decay:0
3batch_normalization_v1/cond_2/AssignMovingAvg/mul:0
:batch_normalization_v1/cond_2/AssignMovingAvg/sub/Switch:1
3batch_normalization_v1/cond_2/AssignMovingAvg/sub:0
.batch_normalization_v1/cond_2/ReadVariableOp:0
'batch_normalization_v1/cond_2/pred_id:0
(batch_normalization_v1/cond_2/switch_t:0
$batch_normalization_v1/moving_mean:0a
#batch_normalization_v1/cond/Merge:0:batch_normalization_v1/cond_2/AssignMovingAvg/sub/Switch:1R
'batch_normalization_v1/cond_2/pred_id:0'batch_normalization_v1/cond_2/pred_id:0m
$batch_normalization_v1/moving_mean:0Ebatch_normalization_v1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
?
)batch_normalization_v1/cond_2/cond_text_1'batch_normalization_v1/cond_2/pred_id:0(batch_normalization_v1/cond_2/switch_f:0*?
7batch_normalization_v1/cond_2/ReadVariableOp_1/Switch:0
0batch_normalization_v1/cond_2/ReadVariableOp_1:0
'batch_normalization_v1/cond_2/pred_id:0
(batch_normalization_v1/cond_2/switch_f:0
$batch_normalization_v1/moving_mean:0_
$batch_normalization_v1/moving_mean:07batch_normalization_v1/cond_2/ReadVariableOp_1/Switch:0R
'batch_normalization_v1/cond_2/pred_id:0'batch_normalization_v1/cond_2/pred_id:0
?
'batch_normalization_v1/cond_3/cond_text'batch_normalization_v1/cond_3/pred_id:0(batch_normalization_v1/cond_3/switch_t:0 *?
%batch_normalization_v1/cond_1/Merge:0
Ebatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
>batch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp:0
@batch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp_1:0
5batch_normalization_v1/cond_3/AssignMovingAvg/decay:0
3batch_normalization_v1/cond_3/AssignMovingAvg/mul:0
:batch_normalization_v1/cond_3/AssignMovingAvg/sub/Switch:1
3batch_normalization_v1/cond_3/AssignMovingAvg/sub:0
.batch_normalization_v1/cond_3/ReadVariableOp:0
'batch_normalization_v1/cond_3/pred_id:0
(batch_normalization_v1/cond_3/switch_t:0
(batch_normalization_v1/moving_variance:0R
'batch_normalization_v1/cond_3/pred_id:0'batch_normalization_v1/cond_3/pred_id:0c
%batch_normalization_v1/cond_1/Merge:0:batch_normalization_v1/cond_3/AssignMovingAvg/sub/Switch:1q
(batch_normalization_v1/moving_variance:0Ebatch_normalization_v1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
?
)batch_normalization_v1/cond_3/cond_text_1'batch_normalization_v1/cond_3/pred_id:0(batch_normalization_v1/cond_3/switch_f:0*?
7batch_normalization_v1/cond_3/ReadVariableOp_1/Switch:0
0batch_normalization_v1/cond_3/ReadVariableOp_1:0
'batch_normalization_v1/cond_3/pred_id:0
(batch_normalization_v1/cond_3/switch_f:0
(batch_normalization_v1/moving_variance:0c
(batch_normalization_v1/moving_variance:07batch_normalization_v1/cond_3/ReadVariableOp_1/Switch:0R
'batch_normalization_v1/cond_3/pred_id:0'batch_normalization_v1/cond_3/pred_id:0
?
'batch_normalization_v1_1/cond/cond_text'batch_normalization_v1_1/cond/pred_id:0(batch_normalization_v1_1/cond/switch_t:0 *?
(batch_normalization_v1_1/cond/Switch_1:0
(batch_normalization_v1_1/cond/Switch_1:1
'batch_normalization_v1_1/cond/pred_id:0
(batch_normalization_v1_1/cond/switch_t:0
*batch_normalization_v1_1/moments/Squeeze:0R
'batch_normalization_v1_1/cond/pred_id:0'batch_normalization_v1_1/cond/pred_id:0V
*batch_normalization_v1_1/moments/Squeeze:0(batch_normalization_v1_1/cond/Switch_1:1
?
)batch_normalization_v1_1/cond/cond_text_1'batch_normalization_v1_1/cond/pred_id:0(batch_normalization_v1_1/cond/switch_f:0*?
5batch_normalization_v1_1/cond/ReadVariableOp/Switch:0
.batch_normalization_v1_1/cond/ReadVariableOp:0
'batch_normalization_v1_1/cond/pred_id:0
(batch_normalization_v1_1/cond/switch_f:0
&batch_normalization_v1_1/moving_mean:0R
'batch_normalization_v1_1/cond/pred_id:0'batch_normalization_v1_1/cond/pred_id:0_
&batch_normalization_v1_1/moving_mean:05batch_normalization_v1_1/cond/ReadVariableOp/Switch:0
?
)batch_normalization_v1_1/cond_1/cond_text)batch_normalization_v1_1/cond_1/pred_id:0*batch_normalization_v1_1/cond_1/switch_t:0 *?
*batch_normalization_v1_1/cond_1/Switch_1:0
*batch_normalization_v1_1/cond_1/Switch_1:1
)batch_normalization_v1_1/cond_1/pred_id:0
*batch_normalization_v1_1/cond_1/switch_t:0
,batch_normalization_v1_1/moments/Squeeze_1:0V
)batch_normalization_v1_1/cond_1/pred_id:0)batch_normalization_v1_1/cond_1/pred_id:0Z
,batch_normalization_v1_1/moments/Squeeze_1:0*batch_normalization_v1_1/cond_1/Switch_1:1
?
+batch_normalization_v1_1/cond_1/cond_text_1)batch_normalization_v1_1/cond_1/pred_id:0*batch_normalization_v1_1/cond_1/switch_f:0*?
7batch_normalization_v1_1/cond_1/ReadVariableOp/Switch:0
0batch_normalization_v1_1/cond_1/ReadVariableOp:0
)batch_normalization_v1_1/cond_1/pred_id:0
*batch_normalization_v1_1/cond_1/switch_f:0
*batch_normalization_v1_1/moving_variance:0e
*batch_normalization_v1_1/moving_variance:07batch_normalization_v1_1/cond_1/ReadVariableOp/Switch:0V
)batch_normalization_v1_1/cond_1/pred_id:0)batch_normalization_v1_1/cond_1/pred_id:0
?
)batch_normalization_v1_1/cond_2/cond_text)batch_normalization_v1_1/cond_2/pred_id:0*batch_normalization_v1_1/cond_2/switch_t:0 *?
%batch_normalization_v1_1/cond/Merge:0
Gbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1
@batch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp:0
Bbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp_1:0
7batch_normalization_v1_1/cond_2/AssignMovingAvg/decay:0
5batch_normalization_v1_1/cond_2/AssignMovingAvg/mul:0
<batch_normalization_v1_1/cond_2/AssignMovingAvg/sub/Switch:1
5batch_normalization_v1_1/cond_2/AssignMovingAvg/sub:0
0batch_normalization_v1_1/cond_2/ReadVariableOp:0
)batch_normalization_v1_1/cond_2/pred_id:0
*batch_normalization_v1_1/cond_2/switch_t:0
&batch_normalization_v1_1/moving_mean:0q
&batch_normalization_v1_1/moving_mean:0Gbatch_normalization_v1_1/cond_2/AssignMovingAvg/ReadVariableOp/Switch:1e
%batch_normalization_v1_1/cond/Merge:0<batch_normalization_v1_1/cond_2/AssignMovingAvg/sub/Switch:1V
)batch_normalization_v1_1/cond_2/pred_id:0)batch_normalization_v1_1/cond_2/pred_id:0
?
+batch_normalization_v1_1/cond_2/cond_text_1)batch_normalization_v1_1/cond_2/pred_id:0*batch_normalization_v1_1/cond_2/switch_f:0*?
9batch_normalization_v1_1/cond_2/ReadVariableOp_1/Switch:0
2batch_normalization_v1_1/cond_2/ReadVariableOp_1:0
)batch_normalization_v1_1/cond_2/pred_id:0
*batch_normalization_v1_1/cond_2/switch_f:0
&batch_normalization_v1_1/moving_mean:0c
&batch_normalization_v1_1/moving_mean:09batch_normalization_v1_1/cond_2/ReadVariableOp_1/Switch:0V
)batch_normalization_v1_1/cond_2/pred_id:0)batch_normalization_v1_1/cond_2/pred_id:0
?
)batch_normalization_v1_1/cond_3/cond_text)batch_normalization_v1_1/cond_3/pred_id:0*batch_normalization_v1_1/cond_3/switch_t:0 *?
'batch_normalization_v1_1/cond_1/Merge:0
Gbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1
@batch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp:0
Bbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp_1:0
7batch_normalization_v1_1/cond_3/AssignMovingAvg/decay:0
5batch_normalization_v1_1/cond_3/AssignMovingAvg/mul:0
<batch_normalization_v1_1/cond_3/AssignMovingAvg/sub/Switch:1
5batch_normalization_v1_1/cond_3/AssignMovingAvg/sub:0
0batch_normalization_v1_1/cond_3/ReadVariableOp:0
)batch_normalization_v1_1/cond_3/pred_id:0
*batch_normalization_v1_1/cond_3/switch_t:0
*batch_normalization_v1_1/moving_variance:0g
'batch_normalization_v1_1/cond_1/Merge:0<batch_normalization_v1_1/cond_3/AssignMovingAvg/sub/Switch:1u
*batch_normalization_v1_1/moving_variance:0Gbatch_normalization_v1_1/cond_3/AssignMovingAvg/ReadVariableOp/Switch:1V
)batch_normalization_v1_1/cond_3/pred_id:0)batch_normalization_v1_1/cond_3/pred_id:0
?
+batch_normalization_v1_1/cond_3/cond_text_1)batch_normalization_v1_1/cond_3/pred_id:0*batch_normalization_v1_1/cond_3/switch_f:0*?
9batch_normalization_v1_1/cond_3/ReadVariableOp_1/Switch:0
2batch_normalization_v1_1/cond_3/ReadVariableOp_1:0
)batch_normalization_v1_1/cond_3/pred_id:0
*batch_normalization_v1_1/cond_3/switch_f:0
*batch_normalization_v1_1/moving_variance:0g
*batch_normalization_v1_1/moving_variance:09batch_normalization_v1_1/cond_3/ReadVariableOp_1/Switch:0V
)batch_normalization_v1_1/cond_3/pred_id:0)batch_normalization_v1_1/cond_3/pred_id:0
?

ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *?
closs/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0?
closs/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1?
ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
?q
rloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*?5
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
qloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
eloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/rank:0
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank:0
gloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/rank:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0?
gloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0?
eloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/rank:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0?
ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0ploss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0?
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02?+
?+
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *?(
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
gloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1?
gloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02?
?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*?

?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?
?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0?loss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
?
mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textmloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *?
xloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0?
mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
?
oloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*?
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
uloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
uloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
uloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
zloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
closs/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0
nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0
gloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
gloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/weights/shape:0uloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0?
mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0mloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0?
closs/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_scalar:0uloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0?
floss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/values/shape:0uloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0?
nloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0sloss/dense_2_loss/MeanSquaredError/weighted_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"?
	variables??
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
?
batch_normalization_v1/gamma:0#batch_normalization_v1/gamma/Assign2batch_normalization_v1/gamma/Read/ReadVariableOp:0(2/batch_normalization_v1/gamma/Initializer/ones:08
?
batch_normalization_v1/beta:0"batch_normalization_v1/beta/Assign1batch_normalization_v1/beta/Read/ReadVariableOp:0(2/batch_normalization_v1/beta/Initializer/zeros:08
?
$batch_normalization_v1/moving_mean:0)batch_normalization_v1/moving_mean/Assign8batch_normalization_v1/moving_mean/Read/ReadVariableOp:0(26batch_normalization_v1/moving_mean/Initializer/zeros:0
?
(batch_normalization_v1/moving_variance:0-batch_normalization_v1/moving_variance/Assign<batch_normalization_v1/moving_variance/Read/ReadVariableOp:0(29batch_normalization_v1/moving_variance/Initializer/ones:0
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
 batch_normalization_v1_1/gamma:0%batch_normalization_v1_1/gamma/Assign4batch_normalization_v1_1/gamma/Read/ReadVariableOp:0(21batch_normalization_v1_1/gamma/Initializer/ones:08
?
batch_normalization_v1_1/beta:0$batch_normalization_v1_1/beta/Assign3batch_normalization_v1_1/beta/Read/ReadVariableOp:0(21batch_normalization_v1_1/beta/Initializer/zeros:08
?
&batch_normalization_v1_1/moving_mean:0+batch_normalization_v1_1/moving_mean/Assign:batch_normalization_v1_1/moving_mean/Read/ReadVariableOp:0(28batch_normalization_v1_1/moving_mean/Initializer/zeros:0
?
*batch_normalization_v1_1/moving_variance:0/batch_normalization_v1_1/moving_variance/Assign>batch_normalization_v1_1/moving_variance/Read/ReadVariableOp:0(2;batch_normalization_v1_1/moving_variance/Initializer/ones:0
?
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
?
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08*?
serving_default?
9
input_1.
flatten_input:0?????????2
output(
dense_2/Softmax:0?????????
tensorflow/serving/predict