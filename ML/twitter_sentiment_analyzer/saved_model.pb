Ê+
é
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
8
Const
output"dtype"
valuetensor"
dtypetype
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
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.0-49-g85c8b2a817f8Ã)

embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ºN *'
shared_nameembedding_3/embeddings

*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes
:	ºN *
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:2*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_3/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È**
shared_namelstm_3/lstm_cell_3/kernel

-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/kernel*
_output_shapes
:	 È*
dtype0
£
#lstm_3/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*4
shared_name%#lstm_3/lstm_cell_3/recurrent_kernel

7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_3/recurrent_kernel*
_output_shapes
:	2È*
dtype0

lstm_3/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*(
shared_namelstm_3/lstm_cell_3/bias

+lstm_3/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/bias*
_output_shapes	
:È*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ºN *.
shared_nameAdam/embedding_3/embeddings/m

1Adam/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/m*
_output_shapes
:	ºN *
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_3/lstm_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È*1
shared_name" Adam/lstm_3/lstm_cell_3/kernel/m

4Adam/lstm_3/lstm_cell_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_3/kernel/m*
_output_shapes
:	 È*
dtype0
±
*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*;
shared_name,*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m
ª
>Adam/lstm_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m*
_output_shapes
:	2È*
dtype0

Adam/lstm_3/lstm_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*/
shared_name Adam/lstm_3/lstm_cell_3/bias/m

2Adam/lstm_3/lstm_cell_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_3/bias/m*
_output_shapes	
:È*
dtype0

Adam/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ºN *.
shared_nameAdam/embedding_3/embeddings/v

1Adam/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/v*
_output_shapes
:	ºN *
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_3/lstm_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 È*1
shared_name" Adam/lstm_3/lstm_cell_3/kernel/v

4Adam/lstm_3/lstm_cell_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_3/kernel/v*
_output_shapes
:	 È*
dtype0
±
*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2È*;
shared_name,*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v
ª
>Adam/lstm_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v*
_output_shapes
:	2È*
dtype0

Adam/lstm_3/lstm_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*/
shared_name Adam/lstm_3/lstm_cell_3/bias/v

2Adam/lstm_3/lstm_cell_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_3/bias/v*
_output_shapes	
:È*
dtype0

NoOpNoOp
è-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*£-
value-B- B-

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
¬
%iter

&beta_1

'beta_2
	(decay
)learning_ratem`ma mb*mc+md,mevfvg vh*vi+vj,vk
*
0
*1
+2
,3
4
 5
*
0
*1
+2
,3
4
 5
 
­
trainable_variables

-layers
	variables
.layer_regularization_losses
/layer_metrics
0non_trainable_variables
	regularization_losses
1metrics
 
fd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­

2layers
3layer_regularization_losses
	variables
4layer_metrics
regularization_losses
5non_trainable_variables
trainable_variables
6metrics
 
 
 
­

7layers
8layer_regularization_losses
	variables
9layer_metrics
regularization_losses
:non_trainable_variables
trainable_variables
;metrics
~

*kernel
+recurrent_kernel
,bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
 

*0
+1
,2

*0
+1
,2
 
¹
trainable_variables

@layers
	variables
Alayer_regularization_losses
Bnon_trainable_variables
Clayer_metrics

Dstates
regularization_losses
Emetrics
 
 
 
­

Flayers
Glayer_regularization_losses
	variables
Hlayer_metrics
regularization_losses
Inon_trainable_variables
trainable_variables
Jmetrics
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
­

Klayers
Llayer_regularization_losses
!	variables
Mlayer_metrics
"regularization_losses
Nnon_trainable_variables
#trainable_variables
Ometrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_3/lstm_cell_3/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_3/lstm_cell_3/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_3/lstm_cell_3/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4
 
 
 

P0
Q1
 
 
 
 
 
 
 
 
 
 

*0
+1
,2
 

*0
+1
,2
­

Rlayers
Slayer_regularization_losses
<	variables
Tlayer_metrics
=regularization_losses
Unon_trainable_variables
>trainable_variables
Vmetrics

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Wtotal
	Xcount
Y	variables
Z	keras_api
D
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

W0
X1

Y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

^	variables

VARIABLE_VALUEAdam/embedding_3/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_3/lstm_cell_3/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_3/lstm_cell_3/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_3/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_3/lstm_cell_3/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/lstm_3/lstm_cell_3/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_3_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿÈ
Ö
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_3_inputembedding_3/embeddingslstm_3/lstm_cell_3/kernellstm_3/lstm_cell_3/bias#lstm_3/lstm_cell_3/recurrent_kerneldense_3/kerneldense_3/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_69087
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_3/embeddings/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_3/kernel/m/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_3/bias/m/Read/ReadVariableOp1Adam/embedding_3/embeddings/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_3/kernel/v/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_3/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_71641

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_3/embeddingsdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/biastotalcounttotal_1count_1Adam/embedding_3/embeddings/mAdam/dense_3/kernel/mAdam/dense_3/bias/m Adam/lstm_3/lstm_cell_3/kernel/m*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mAdam/lstm_3/lstm_cell_3/bias/mAdam/embedding_3/embeddings/vAdam/dense_3/kernel/vAdam/dense_3/bias/v Adam/lstm_3/lstm_cell_3/kernel/v*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vAdam/lstm_3/lstm_cell_3/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_71732ÅÆ(


&__inference_lstm_3_layer_call_fn_71224

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_688742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÈ :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
¼
³
A__inference_lstm_3_layer_call_and_return_conditional_losses_71202

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identity¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/ones_like|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const¼
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/ones_like_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_3h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02"
 lstm_cell_3/split/ReadVariableOp×
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÏ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_3/split_1£
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd©
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_1©
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_2©
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ä
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice£
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add|
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid¡
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ð
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¥
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_5¡
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_8¡
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ð
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¥
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_6¡
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_2u
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_3¡
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ð
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¥
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_7¡
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_71066*
condR
while_cond_71065*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¶
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÈ :::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
á	

F__inference_embedding_3_layer_call_and_return_conditional_losses_69823

inputs
embedding_lookup_69817
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Castü
embedding_lookupResourceGatherembedding_lookup_69817Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/69817*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/69817*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
½D
Ó
A__inference_lstm_3_layer_call_and_return_conditional_losses_68164

inputs
lstm_cell_3_68082
lstm_cell_3_68084
lstm_cell_3_68086
identity¢#lstm_cell_3/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_68082lstm_cell_3_68084lstm_cell_3_68086*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_676692%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_68082lstm_cell_3_68084lstm_cell_3_68086*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_68095*
condR
while_cond_68094*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Æ
l
3__inference_spatial_dropout1d_3_layer_call_fn_69862

inputs
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_682202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
³Ì

$sequential_3_lstm_3_while_body_67187D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3C
?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0
{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0I
Esequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0K
Gsequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0C
?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0&
"sequential_3_lstm_3_while_identity(
$sequential_3_lstm_3_while_identity_1(
$sequential_3_lstm_3_while_identity_2(
$sequential_3_lstm_3_while_identity_3(
$sequential_3_lstm_3_while_identity_4(
$sequential_3_lstm_3_while_identity_5A
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1}
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensorG
Csequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resourceI
Esequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resourceA
=sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource¢4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp¢6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1¢6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2¢6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3¢:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp¢<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpë
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2M
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeË
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_3_while_placeholderTsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02?
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemâ
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/ShapeShapeDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/Shape³
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/Const
/sequential_3/lstm_3/while/lstm_cell_3/ones_likeFill>sequential_3/lstm_3/while/lstm_cell_3/ones_like/Shape:output:0>sequential_3/lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_3/lstm_3/while/lstm_cell_3/ones_likeÉ
7sequential_3/lstm_3/while/lstm_cell_3/ones_like_1/ShapeShape'sequential_3_lstm_3_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_3/lstm_3/while/lstm_cell_3/ones_like_1/Shape·
7sequential_3/lstm_3/while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_3/lstm_3/while/lstm_cell_3/ones_like_1/Const¤
1sequential_3/lstm_3/while/lstm_cell_3/ones_like_1Fill@sequential_3/lstm_3/while/lstm_cell_3/ones_like_1/Shape:output:0@sequential_3/lstm_3/while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ223
1sequential_3/lstm_3/while/lstm_cell_3/ones_like_1
)sequential_3/lstm_3/while/lstm_cell_3/mulMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_3/lstm_3/while/lstm_cell_3/mul
+sequential_3/lstm_3/while/lstm_cell_3/mul_1MulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_1
+sequential_3/lstm_3/while/lstm_cell_3/mul_2MulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_2
+sequential_3/lstm_3/while/lstm_cell_3/mul_3MulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_3
+sequential_3/lstm_3/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_3/lstm_3/while/lstm_cell_3/Const°
5sequential_3/lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_3/lstm_3/while/lstm_cell_3/split/split_dimÿ
:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOpEsequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02<
:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp¿
+sequential_3/lstm_3/while/lstm_cell_3/splitSplit>sequential_3/lstm_3/while/lstm_cell_3/split/split_dim:output:0Bsequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2-
+sequential_3/lstm_3/while/lstm_cell_3/splitý
,sequential_3/lstm_3/while/lstm_cell_3/MatMulMatMul-sequential_3/lstm_3/while/lstm_cell_3/mul:z:04sequential_3/lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22.
,sequential_3/lstm_3/while/lstm_cell_3/MatMul
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_1MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_1:z:04sequential_3/lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_1
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_2MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_2:z:04sequential_3/lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_2
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_3MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_3:z:04sequential_3/lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_3 
-sequential_3/lstm_3/while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_1´
7sequential_3/lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_3/lstm_3/while/lstm_cell_3/split_1/split_dim
<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOpGsequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02>
<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp·
-sequential_3/lstm_3/while/lstm_cell_3/split_1Split@sequential_3/lstm_3/while/lstm_cell_3/split_1/split_dim:output:0Dsequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2/
-sequential_3/lstm_3/while/lstm_cell_3/split_1
-sequential_3/lstm_3/while/lstm_cell_3/BiasAddBiasAdd6sequential_3/lstm_3/while/lstm_cell_3/MatMul:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-sequential_3/lstm_3/while/lstm_cell_3/BiasAdd
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd8sequential_3/lstm_3/while/lstm_cell_3/MatMul_1:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_1
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd8sequential_3/lstm_3/while/lstm_cell_3/MatMul_2:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_2
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd8sequential_3/lstm_3/while/lstm_cell_3/MatMul_3:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_3ø
+sequential_3/lstm_3/while/lstm_cell_3/mul_4Mul'sequential_3_lstm_3_while_placeholder_2:sequential_3/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/mul_4ø
+sequential_3/lstm_3/while/lstm_cell_3/mul_5Mul'sequential_3_lstm_3_while_placeholder_2:sequential_3/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/mul_5ø
+sequential_3/lstm_3/while/lstm_cell_3/mul_6Mul'sequential_3_lstm_3_while_placeholder_2:sequential_3/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/mul_6ø
+sequential_3/lstm_3/while/lstm_cell_3/mul_7Mul'sequential_3_lstm_3_while_placeholder_2:sequential_3/lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/mul_7í
4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype026
4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOpÇ
9sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stackË
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_1Ë
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_2à
3sequential_3/lstm_3/while/lstm_cell_3/strided_sliceStridedSlice<sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp:value:0Bsequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack:output:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask25
3sequential_3/lstm_3/while/lstm_cell_3/strided_slice
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_4MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_4:z:0<sequential_3/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_4
)sequential_3/lstm_3/while/lstm_cell_3/addAddV26sequential_3/lstm_3/while/lstm_cell_3/BiasAdd:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_3/lstm_3/while/lstm_cell_3/addÊ
-sequential_3/lstm_3/while/lstm_cell_3/SigmoidSigmoid-sequential_3/lstm_3/while/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22/
-sequential_3/lstm_3/while/lstm_cell_3/Sigmoidñ
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype028
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1Ë
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stackÏ
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Ï
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2ì
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice>sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask27
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_5MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_5:z:0>sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_5
+sequential_3/lstm_3/while/lstm_cell_3/add_1AddV28sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_1:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/add_1Ð
/sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid/sequential_3/lstm_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_1ñ
+sequential_3/lstm_3/while/lstm_cell_3/mul_8Mul3sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_1:y:0'sequential_3_lstm_3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/mul_8ñ
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype028
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2Ë
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stackÏ
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Ï
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2ì
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice>sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask27
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_6MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_6:z:0>sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_6
+sequential_3/lstm_3/while/lstm_cell_3/add_2AddV28sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_2:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/add_2Ã
*sequential_3/lstm_3/while/lstm_cell_3/TanhTanh/sequential_3/lstm_3/while/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22,
*sequential_3/lstm_3/while/lstm_cell_3/Tanhö
+sequential_3/lstm_3/while/lstm_cell_3/mul_9Mul1sequential_3/lstm_3/while/lstm_cell_3/Sigmoid:y:0.sequential_3/lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/mul_9÷
+sequential_3/lstm_3/while/lstm_cell_3/add_3AddV2/sequential_3/lstm_3/while/lstm_cell_3/mul_8:z:0/sequential_3/lstm_3/while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/add_3ñ
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype028
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3Ë
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stackÏ
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Ï
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2ì
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice>sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask27
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_7MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_7:z:0>sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ220
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_7
+sequential_3/lstm_3/while/lstm_cell_3/add_4AddV28sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_3:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/while/lstm_cell_3/add_4Ð
/sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid/sequential_3/lstm_3/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_2Ç
,sequential_3/lstm_3/while/lstm_cell_3/Tanh_1Tanh/sequential_3/lstm_3/while/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22.
,sequential_3/lstm_3/while/lstm_cell_3/Tanh_1ü
,sequential_3/lstm_3/while/lstm_cell_3/mul_10Mul3sequential_3/lstm_3/while/lstm_cell_3/Sigmoid_2:y:00sequential_3/lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22.
,sequential_3/lstm_3/while/lstm_cell_3/mul_10Ä
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_3_while_placeholder_1%sequential_3_lstm_3_while_placeholder0sequential_3/lstm_3/while/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItem
sequential_3/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_3/while/add/y¹
sequential_3/lstm_3/while/addAddV2%sequential_3_lstm_3_while_placeholder(sequential_3/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_3/while/add
!sequential_3/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_3/while/add_1/yÚ
sequential_3/lstm_3/while/add_1AddV2@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counter*sequential_3/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_3/while/add_1ø
"sequential_3/lstm_3/while/IdentityIdentity#sequential_3/lstm_3/while/add_1:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_3/while/Identity
$sequential_3/lstm_3/while/Identity_1IdentityFsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations5^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_1ú
$sequential_3/lstm_3/while/Identity_2Identity!sequential_3/lstm_3/while/add:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_2§
$sequential_3/lstm_3/while/Identity_3IdentityNsequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_3
$sequential_3/lstm_3/while/Identity_4Identity0sequential_3/lstm_3/while/lstm_cell_3/mul_10:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$sequential_3/lstm_3/while/Identity_4
$sequential_3/lstm_3/while/Identity_5Identity/sequential_3/lstm_3/while/lstm_cell_3/add_3:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$sequential_3/lstm_3/while/Identity_5"Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0"U
$sequential_3_lstm_3_while_identity_1-sequential_3/lstm_3/while/Identity_1:output:0"U
$sequential_3_lstm_3_while_identity_2-sequential_3/lstm_3/while/Identity_2:output:0"U
$sequential_3_lstm_3_while_identity_3-sequential_3/lstm_3/while/Identity_3:output:0"U
$sequential_3_lstm_3_while_identity_4-sequential_3/lstm_3/while/Identity_4:output:0"U
$sequential_3_lstm_3_while_identity_5-sequential_3/lstm_3/while/Identity_5:output:0"
=sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0"
Esequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resourceGsequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"
Csequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resourceEsequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0"ø
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2l
4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp2p
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_16sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_12p
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_26sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_22p
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_36sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_32x
:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp2|
<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ô¥
º

lstm_3_while_body_69635*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0>
:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_06
2lstm_3_while_lstm_cell_3_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor:
6lstm_3_while_lstm_cell_3_split_readvariableop_resource<
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource4
0lstm_3_while_lstm_cell_3_readvariableop_resource¢'lstm_3/while/lstm_cell_3/ReadVariableOp¢)lstm_3/while/lstm_cell_3/ReadVariableOp_1¢)lstm_3/while/lstm_cell_3/ReadVariableOp_2¢)lstm_3/while/lstm_cell_3/ReadVariableOp_3¢-lstm_3/while/lstm_cell_3/split/ReadVariableOp¢/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpÑ
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem»
(lstm_3/while/lstm_cell_3/ones_like/ShapeShape7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/ones_like/Shape
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_3/while/lstm_cell_3/ones_like/Constè
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_3/while/lstm_cell_3/ones_like¢
*lstm_3/while/lstm_cell_3/ones_like_1/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_3/while/lstm_cell_3/ones_like_1/Shape
*lstm_3/while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_3/while/lstm_cell_3/ones_like_1/Constð
$lstm_3/while/lstm_cell_3/ones_like_1Fill3lstm_3/while/lstm_cell_3/ones_like_1/Shape:output:03lstm_3/while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_3/while/lstm_cell_3/ones_like_1Û
lstm_3/while/lstm_cell_3/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/while/lstm_cell_3/mulß
lstm_3/while/lstm_cell_3/mul_1Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/while/lstm_cell_3/mul_1ß
lstm_3/while/lstm_cell_3/mul_2Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/while/lstm_cell_3/mul_2ß
lstm_3/while/lstm_cell_3/mul_3Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/while/lstm_cell_3/mul_3
lstm_3/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_3/while/lstm_cell_3/Const
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dimØ
-lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02/
-lstm_3/while/lstm_cell_3/split/ReadVariableOp
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:05lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2 
lstm_3/while/lstm_cell_3/splitÉ
lstm_3/while/lstm_cell_3/MatMulMatMul lstm_3/while/lstm_cell_3/mul:z:0'lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_3/while/lstm_cell_3/MatMulÏ
!lstm_3/while/lstm_cell_3/MatMul_1MatMul"lstm_3/while/lstm_cell_3/mul_1:z:0'lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_1Ï
!lstm_3/while/lstm_cell_3/MatMul_2MatMul"lstm_3/while/lstm_cell_3/mul_2:z:0'lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_2Ï
!lstm_3/while/lstm_cell_3/MatMul_3MatMul"lstm_3/while/lstm_cell_3/mul_3:z:0'lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_3
 lstm_3/while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_3/while/lstm_cell_3/Const_1
*lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_3/while/lstm_cell_3/split_1/split_dimÚ
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype021
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp
 lstm_3/while/lstm_cell_3/split_1Split3lstm_3/while/lstm_cell_3/split_1/split_dim:output:07lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2"
 lstm_3/while/lstm_cell_3/split_1×
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd)lstm_3/while/lstm_cell_3/MatMul:product:0)lstm_3/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/while/lstm_cell_3/BiasAddÝ
"lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_3/while/lstm_cell_3/MatMul_1:product:0)lstm_3/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/BiasAdd_1Ý
"lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_3/while/lstm_cell_3/MatMul_2:product:0)lstm_3/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/BiasAdd_2Ý
"lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_3/while/lstm_cell_3/MatMul_3:product:0)lstm_3/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/BiasAdd_3Ä
lstm_3/while/lstm_cell_3/mul_4Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_4Ä
lstm_3/while/lstm_cell_3/mul_5Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_5Ä
lstm_3/while/lstm_cell_3/mul_6Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_6Ä
lstm_3/while/lstm_cell_3/mul_7Mullstm_3_while_placeholder_2-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_7Æ
'lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02)
'lstm_3/while/lstm_cell_3/ReadVariableOp­
,lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_3/while/lstm_cell_3/strided_slice/stack±
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_3/while/lstm_cell_3/strided_slice/stack_1±
.lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice/stack_2
&lstm_3/while/lstm_cell_3/strided_sliceStridedSlice/lstm_3/while/lstm_cell_3/ReadVariableOp:value:05lstm_3/while/lstm_cell_3/strided_slice/stack:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2(
&lstm_3/while/lstm_cell_3/strided_slice×
!lstm_3/while/lstm_cell_3/MatMul_4MatMul"lstm_3/while/lstm_cell_3/mul_4:z:0/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_4Ï
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/BiasAdd:output:0+lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/lstm_cell_3/add£
 lstm_3/while/lstm_cell_3/SigmoidSigmoid lstm_3/while/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/while/lstm_cell_3/SigmoidÊ
)lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_1±
.lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_3/while/lstm_cell_3/strided_slice_1/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_1Ù
!lstm_3/while/lstm_cell_3/MatMul_5MatMul"lstm_3/while/lstm_cell_3/mul_5:z:01lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_5Õ
lstm_3/while/lstm_cell_3/add_1AddV2+lstm_3/while/lstm_cell_3/BiasAdd_1:output:0+lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_1©
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/Sigmoid_1½
lstm_3/while/lstm_cell_3/mul_8Mul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_8Ê
)lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_2±
.lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   20
.lstm_3/while/lstm_cell_3/strided_slice_2/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_2Ù
!lstm_3/while/lstm_cell_3/MatMul_6MatMul"lstm_3/while/lstm_cell_3/mul_6:z:01lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_6Õ
lstm_3/while/lstm_cell_3/add_2AddV2+lstm_3/while/lstm_cell_3/BiasAdd_2:output:0+lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_2
lstm_3/while/lstm_cell_3/TanhTanh"lstm_3/while/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/lstm_cell_3/TanhÂ
lstm_3/while/lstm_cell_3/mul_9Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0!lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_9Ã
lstm_3/while/lstm_cell_3/add_3AddV2"lstm_3/while/lstm_cell_3/mul_8:z:0"lstm_3/while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_3Ê
)lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_3±
.lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.lstm_3/while/lstm_cell_3/strided_slice_3/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_3Ù
!lstm_3/while/lstm_cell_3/MatMul_7MatMul"lstm_3/while/lstm_cell_3/mul_7:z:01lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_7Õ
lstm_3/while/lstm_cell_3/add_4AddV2+lstm_3/while/lstm_cell_3/BiasAdd_3:output:0+lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_4©
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid"lstm_3/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/Sigmoid_2 
lstm_3/while/lstm_cell_3/Tanh_1Tanh"lstm_3/while/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_3/while/lstm_cell_3/Tanh_1È
lstm_3/while/lstm_cell_3/mul_10Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0#lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_3/while/lstm_cell_3/mul_10
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder#lstm_3/while/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2²
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3¥
lstm_3/while/Identity_4Identity#lstm_3/while/lstm_cell_3/mul_10:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/Identity_4¤
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_3:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"f
0lstm_3_while_lstm_cell_3_readvariableop_resource2lstm_3_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_3_while_lstm_cell_3_split_readvariableop_resource8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"Ä
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2R
'lstm_3/while/lstm_cell_3/ReadVariableOp'lstm_3/while/lstm_cell_3/ReadVariableOp2V
)lstm_3/while/lstm_cell_3/ReadVariableOp_1)lstm_3/while/lstm_cell_3/ReadVariableOp_12V
)lstm_3/while/lstm_cell_3/ReadVariableOp_2)lstm_3/while/lstm_cell_3/ReadVariableOp_22V
)lstm_3/while/lstm_cell_3/ReadVariableOp_3)lstm_3/while/lstm_cell_3/ReadVariableOp_32^
-lstm_3/while/lstm_cell_3/split/ReadVariableOp-lstm_3/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ó
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69852

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ :T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs


&__inference_lstm_3_layer_call_fn_70553
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_680322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ìÇ
à
G__inference_sequential_3_layer_call_and_return_conditional_losses_69779

inputs&
"embedding_3_embedding_lookup_695134
0lstm_3_lstm_cell_3_split_readvariableop_resource6
2lstm_3_lstm_cell_3_split_1_readvariableop_resource.
*lstm_3_lstm_cell_3_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢embedding_3/embedding_lookup¢!lstm_3/lstm_cell_3/ReadVariableOp¢#lstm_3/lstm_cell_3/ReadVariableOp_1¢#lstm_3/lstm_cell_3/ReadVariableOp_2¢#lstm_3/lstm_cell_3/ReadVariableOp_3¢'lstm_3/lstm_cell_3/split/ReadVariableOp¢)lstm_3/lstm_cell_3/split_1/ReadVariableOp¢lstm_3/whilev
embedding_3/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
embedding_3/Cast¸
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_69513embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/69513*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/69513*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2'
%embedding_3/embedding_lookup/IdentityÅ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2)
'embedding_3/embedding_lookup/Identity_1±
spatial_dropout1d_3/IdentityIdentity0embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
spatial_dropout1d_3/Identityq
lstm_3/ShapeShape%spatial_dropout1d_3/Identity:output:0*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros/mul/y
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_3/zeros/Less/y
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros/packed/1
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros_1/mul/y
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_3/zeros_1/Less/y
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros_1/packed/1¥
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/zeros_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm¯
lstm_3/transpose	Transpose%spatial_dropout1d_3/Identity:output:0lstm_3/transpose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_3/TensorArrayV2/element_shapeÎ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Í
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2¦
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_3/strided_slice_2
"lstm_3/lstm_cell_3/ones_like/ShapeShapelstm_3/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/ones_like/Shape
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_3/lstm_cell_3/ones_like/ConstÐ
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/ones_like
$lstm_3/lstm_cell_3/ones_like_1/ShapeShapelstm_3/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_3/lstm_cell_3/ones_like_1/Shape
$lstm_3/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_3/lstm_cell_3/ones_like_1/ConstØ
lstm_3/lstm_cell_3/ones_like_1Fill-lstm_3/lstm_cell_3/ones_like_1/Shape:output:0-lstm_3/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/lstm_cell_3/ones_like_1±
lstm_3/lstm_cell_3/mulMullstm_3/strided_slice_2:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mulµ
lstm_3/lstm_cell_3/mul_1Mullstm_3/strided_slice_2:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul_1µ
lstm_3/lstm_cell_3/mul_2Mullstm_3/strided_slice_2:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul_2µ
lstm_3/lstm_cell_3/mul_3Mullstm_3/strided_slice_2:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul_3v
lstm_3/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dimÄ
'lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02)
'lstm_3/lstm_cell_3/split/ReadVariableOpó
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_3/lstm_cell_3/split±
lstm_3/lstm_cell_3/MatMulMatMullstm_3/lstm_cell_3/mul:z:0!lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul·
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/lstm_cell_3/mul_1:z:0!lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_1·
lstm_3/lstm_cell_3/MatMul_2MatMullstm_3/lstm_cell_3/mul_2:z:0!lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_2·
lstm_3/lstm_cell_3/MatMul_3MatMullstm_3/lstm_cell_3/mul_3:z:0!lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_3z
lstm_3/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const_1
$lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_3/lstm_cell_3/split_1/split_dimÆ
)lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02+
)lstm_3/lstm_cell_3/split_1/ReadVariableOpë
lstm_3/lstm_cell_3/split_1Split-lstm_3/lstm_cell_3/split_1/split_dim:output:01lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_3/lstm_cell_3/split_1¿
lstm_3/lstm_cell_3/BiasAddBiasAdd#lstm_3/lstm_cell_3/MatMul:product:0#lstm_3/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAddÅ
lstm_3/lstm_cell_3/BiasAdd_1BiasAdd%lstm_3/lstm_cell_3/MatMul_1:product:0#lstm_3/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAdd_1Å
lstm_3/lstm_cell_3/BiasAdd_2BiasAdd%lstm_3/lstm_cell_3/MatMul_2:product:0#lstm_3/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAdd_2Å
lstm_3/lstm_cell_3/BiasAdd_3BiasAdd%lstm_3/lstm_cell_3/MatMul_3:product:0#lstm_3/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAdd_3­
lstm_3/lstm_cell_3/mul_4Mullstm_3/zeros:output:0'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_4­
lstm_3/lstm_cell_3/mul_5Mullstm_3/zeros:output:0'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_5­
lstm_3/lstm_cell_3/mul_6Mullstm_3/zeros:output:0'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_6­
lstm_3/lstm_cell_3/mul_7Mullstm_3/zeros:output:0'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_7²
!lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02#
!lstm_3/lstm_cell_3/ReadVariableOp¡
&lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_3/lstm_cell_3/strided_slice/stack¥
(lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_3/lstm_cell_3/strided_slice/stack_1¥
(lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice/stack_2î
 lstm_3/lstm_cell_3/strided_sliceStridedSlice)lstm_3/lstm_cell_3/ReadVariableOp:value:0/lstm_3/lstm_cell_3/strided_slice/stack:output:01lstm_3/lstm_cell_3/strided_slice/stack_1:output:01lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2"
 lstm_3/lstm_cell_3/strided_slice¿
lstm_3/lstm_cell_3/MatMul_4MatMullstm_3/lstm_cell_3/mul_4:z:0)lstm_3/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_4·
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/BiasAdd:output:0%lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add
lstm_3/lstm_cell_3/SigmoidSigmoidlstm_3/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Sigmoid¶
#lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_1¥
(lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_3/lstm_cell_3/strided_slice_1/stack©
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_1©
*lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_2ú
"lstm_3/lstm_cell_3/strided_slice_1StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_1:value:01lstm_3/lstm_cell_3/strided_slice_1/stack:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_1Á
lstm_3/lstm_cell_3/MatMul_5MatMullstm_3/lstm_cell_3/mul_5:z:0+lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_5½
lstm_3/lstm_cell_3/add_1AddV2%lstm_3/lstm_cell_3/BiasAdd_1:output:0%lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_1
lstm_3/lstm_cell_3/Sigmoid_1Sigmoidlstm_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Sigmoid_1¨
lstm_3/lstm_cell_3/mul_8Mul lstm_3/lstm_cell_3/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_8¶
#lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_2¥
(lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(lstm_3/lstm_cell_3/strided_slice_2/stack©
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_1©
*lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_2ú
"lstm_3/lstm_cell_3/strided_slice_2StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_2:value:01lstm_3/lstm_cell_3/strided_slice_2/stack:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_2Á
lstm_3/lstm_cell_3/MatMul_6MatMullstm_3/lstm_cell_3/mul_6:z:0+lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_6½
lstm_3/lstm_cell_3/add_2AddV2%lstm_3/lstm_cell_3/BiasAdd_2:output:0%lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_2
lstm_3/lstm_cell_3/TanhTanhlstm_3/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Tanhª
lstm_3/lstm_cell_3/mul_9Mullstm_3/lstm_cell_3/Sigmoid:y:0lstm_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_9«
lstm_3/lstm_cell_3/add_3AddV2lstm_3/lstm_cell_3/mul_8:z:0lstm_3/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_3¶
#lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_3¥
(lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/lstm_cell_3/strided_slice_3/stack©
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_1©
*lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_2ú
"lstm_3/lstm_cell_3/strided_slice_3StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_3:value:01lstm_3/lstm_cell_3/strided_slice_3/stack:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_3Á
lstm_3/lstm_cell_3/MatMul_7MatMullstm_3/lstm_cell_3/mul_7:z:0+lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_7½
lstm_3/lstm_cell_3/add_4AddV2%lstm_3/lstm_cell_3/BiasAdd_3:output:0%lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_4
lstm_3/lstm_cell_3/Sigmoid_2Sigmoidlstm_3/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Sigmoid_2
lstm_3/lstm_cell_3/Tanh_1Tanhlstm_3/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Tanh_1°
lstm_3/lstm_cell_3/mul_10Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_10
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2&
$lstm_3/TensorArrayV2_1/element_shapeÔ
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterÈ
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_3_lstm_cell_3_split_readvariableop_resource2lstm_3_lstm_cell_3_split_1_readvariableop_resource*lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_69635*#
condR
lstm_3_while_cond_69634*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
lstm_3/whileÃ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_3/strided_slice_3/stack
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2Ä
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
lstm_3/strided_slice_3
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permÂ
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtime
dropout_3/IdentityIdentitylstm_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/Identity¥
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_3/BiasAddy
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_3/SigmoidÂ
IdentityIdentitydense_3/Sigmoid:y:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2F
!lstm_3/lstm_cell_3/ReadVariableOp!lstm_3/lstm_cell_3/ReadVariableOp2J
#lstm_3/lstm_cell_3/ReadVariableOp_1#lstm_3/lstm_cell_3/ReadVariableOp_12J
#lstm_3/lstm_cell_3/ReadVariableOp_2#lstm_3/lstm_cell_3/ReadVariableOp_22J
#lstm_3/lstm_cell_3/ReadVariableOp_3#lstm_3/lstm_cell_3/ReadVariableOp_32R
'lstm_3/lstm_cell_3/split/ReadVariableOp'lstm_3/lstm_cell_3/split/ReadVariableOp2V
)lstm_3/lstm_cell_3/split_1/ReadVariableOp)lstm_3/lstm_cell_3/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
ì$

while_body_68095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_3_68119_0
while_lstm_cell_3_68121_0
while_lstm_cell_3_68123_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_3_68119
while_lstm_cell_3_68121
while_lstm_cell_3_68123¢)while/lstm_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_68119_0while_lstm_cell_3_68121_0while_lstm_cell_3_68123_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_676692+
)while/lstm_cell_3/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Â
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4Â
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_68119while_lstm_cell_3_68119_0"4
while_lstm_cell_3_68121while_lstm_cell_3_68121_0"4
while_lstm_cell_3_68123while_lstm_cell_3_68123_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
¦
¾
while_cond_68094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_68094___redundant_placeholder03
/while_while_cond_68094___redundant_placeholder13
/while_while_cond_68094___redundant_placeholder23
/while_while_cond_68094___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
¦
¾
while_cond_67962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_67962___redundant_placeholder03
/while_while_cond_67962___redundant_placeholder13
/while_while_cond_67962___redundant_placeholder23
/while_while_cond_67962___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
å
Å
while_body_70406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resource¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/ones_like
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÔ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/ones_like_1¿
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mulÃ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_1Ã
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_2Ã
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_3t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpï
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_3/split­
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul³
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_1³
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_2³
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpç
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_3/split_1»
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAddÁ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_1Á
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_2Á
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_3¨
while/lstm_cell_3/mul_4Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_4¨
while/lstm_cell_3/mul_5Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_5¨
while/lstm_cell_3/mul_6Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_6¨
while/lstm_cell_3/mul_7Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_7±
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2è
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice»
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_4³
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoidµ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ô
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1½
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_5¹
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_1¡
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_8µ
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ô
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2½
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_6¹
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh¦
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_9§
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_3µ
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ô
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3½
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_7¹
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh_1¬
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3æ
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4å
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 

È
,__inference_sequential_3_layer_call_fn_69060
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_690452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+
_user_specified_nameembedding_3_input
·
Ë
+__inference_lstm_cell_3_layer_call_fn_71520

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_675852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
Ó
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_68220

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ :T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
¦
¾
while_cond_68737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_68737___redundant_placeholder03
/while_while_cond_68737___redundant_placeholder13
/while_while_cond_68737___redundant_placeholder23
/while_while_cond_68737___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_68916

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ª
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69889

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
Å
while_body_71066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resource¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/ones_like
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÔ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/ones_like_1¿
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mulÃ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_1Ã
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_2Ã
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_3t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpï
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_3/split­
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul³
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_1³
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_2³
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpç
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_3/split_1»
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAddÁ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_1Á
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_2Á
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_3¨
while/lstm_cell_3/mul_4Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_4¨
while/lstm_cell_3/mul_5Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_5¨
while/lstm_cell_3/mul_6Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_6¨
while/lstm_cell_3/mul_7Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_7±
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2è
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice»
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_4³
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoidµ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ô
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1½
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_5¹
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_1¡
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_8µ
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ô
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2½
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_6¹
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh¦
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_9§
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_3µ
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ô
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3½
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_7¹
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh_1¬
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3æ
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4å
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
°N
þ
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_67669

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 È*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:È*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
õ
Å
while_body_70087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resource¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
while/lstm_cell_3/dropout/ConstÇ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ùü28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&while/lstm_cell_3/dropout/GreaterEqualµ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_3/dropout/CastÂ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_1/ConstÍ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÿå2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_1/GreaterEqual»
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_1/CastÊ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_2/ConstÍ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¿Î×2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_2/GreaterEqual»
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_2/CastÊ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_3/ConstÍ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÕÒæ2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_3/GreaterEqual»
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_3/CastÊ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_3/Mul_1
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÔ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/ones_like_1
!while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_4/ConstÏ
while/lstm_cell_3/dropout_4/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_4/Mul
!while/lstm_cell_3/dropout_4/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_4/Shape
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¥£°2:
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_4/GreaterEqual/y
(while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_4/GreaterEqual»
 while/lstm_cell_3/dropout_4/CastCast,while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_4/CastÊ
!while/lstm_cell_3/dropout_4/Mul_1Mul#while/lstm_cell_3/dropout_4/Mul:z:0$while/lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_4/Mul_1
!while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_5/ConstÏ
while/lstm_cell_3/dropout_5/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_5/Mul
!while/lstm_cell_3/dropout_5/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_5/Shape
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¥¦ì2:
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_5/GreaterEqual/y
(while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_5/GreaterEqual»
 while/lstm_cell_3/dropout_5/CastCast,while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_5/CastÊ
!while/lstm_cell_3/dropout_5/Mul_1Mul#while/lstm_cell_3/dropout_5/Mul:z:0$while/lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_5/Mul_1
!while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_6/ConstÏ
while/lstm_cell_3/dropout_6/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_6/Mul
!while/lstm_cell_3/dropout_6/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_6/Shape
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ù2:
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_6/GreaterEqual/y
(while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_6/GreaterEqual»
 while/lstm_cell_3/dropout_6/CastCast,while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_6/CastÊ
!while/lstm_cell_3/dropout_6/Mul_1Mul#while/lstm_cell_3/dropout_6/Mul:z:0$while/lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_6/Mul_1
!while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_7/ConstÏ
while/lstm_cell_3/dropout_7/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_7/Mul
!while/lstm_cell_3/dropout_7/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_7/Shape
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ð¼ß2:
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_7/GreaterEqual/y
(while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_7/GreaterEqual»
 while/lstm_cell_3/dropout_7/CastCast,while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_7/CastÊ
!while/lstm_cell_3/dropout_7/Mul_1Mul#while/lstm_cell_3/dropout_7/Mul:z:0$while/lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_7/Mul_1¾
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mulÄ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_1Ä
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_2Ä
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_3t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpï
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_3/split­
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul³
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_1³
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_2³
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpç
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_3/split_1»
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAddÁ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_1Á
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_2Á
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_3§
while/lstm_cell_3/mul_4Mulwhile_placeholder_2%while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_4§
while/lstm_cell_3/mul_5Mulwhile_placeholder_2%while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_5§
while/lstm_cell_3/mul_6Mulwhile_placeholder_2%while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_6§
while/lstm_cell_3/mul_7Mulwhile_placeholder_2%while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_7±
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2è
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice»
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_4³
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoidµ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ô
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1½
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_5¹
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_1¡
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_8µ
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ô
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2½
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_6¹
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh¦
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_9§
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_3µ
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ô
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3½
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_7¹
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh_1¬
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3æ
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4å
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
Ø
|
'__inference_dense_3_layer_call_fn_71271

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_689452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


&__inference_lstm_3_layer_call_fn_70564
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_681642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0

l
3__inference_spatial_dropout1d_3_layer_call_fn_69899

inputs
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_673842
StatefulPartitionedCall¤
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
m
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_67384

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
½
,__inference_sequential_3_layer_call_fn_69813

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_690452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
õ
Å
while_body_70747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resource¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
while/lstm_cell_3/dropout/ConstÇ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ü;28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&while/lstm_cell_3/dropout/GreaterEqualµ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_3/dropout/CastÂ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_1/ConstÍ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÕÏ±2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_1/GreaterEqual»
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_1/CastÊ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_2/ConstÍ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¯2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_2/GreaterEqual»
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_2/CastÊ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_3/ConstÍ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2çÿP2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_3/GreaterEqual»
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_3/CastÊ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_3/Mul_1
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÔ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/ones_like_1
!while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_4/ConstÏ
while/lstm_cell_3/dropout_4/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_4/Mul
!while/lstm_cell_3/dropout_4/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_4/Shape
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¬2:
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_4/GreaterEqual/y
(while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_4/GreaterEqual»
 while/lstm_cell_3/dropout_4/CastCast,while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_4/CastÊ
!while/lstm_cell_3/dropout_4/Mul_1Mul#while/lstm_cell_3/dropout_4/Mul:z:0$while/lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_4/Mul_1
!while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_5/ConstÏ
while/lstm_cell_3/dropout_5/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_5/Mul
!while/lstm_cell_3/dropout_5/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_5/Shape
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÎÅ2:
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_5/GreaterEqual/y
(while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_5/GreaterEqual»
 while/lstm_cell_3/dropout_5/CastCast,while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_5/CastÊ
!while/lstm_cell_3/dropout_5/Mul_1Mul#while/lstm_cell_3/dropout_5/Mul:z:0$while/lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_5/Mul_1
!while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_6/ConstÏ
while/lstm_cell_3/dropout_6/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_6/Mul
!while/lstm_cell_3/dropout_6/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_6/Shape
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2³ÉÒ2:
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_6/GreaterEqual/y
(while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_6/GreaterEqual»
 while/lstm_cell_3/dropout_6/CastCast,while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_6/CastÊ
!while/lstm_cell_3/dropout_6/Mul_1Mul#while/lstm_cell_3/dropout_6/Mul:z:0$while/lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_6/Mul_1
!while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_7/ConstÏ
while/lstm_cell_3/dropout_7/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_7/Mul
!while/lstm_cell_3/dropout_7/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_7/Shape
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¨Ý©2:
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_7/GreaterEqual/y
(while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_7/GreaterEqual»
 while/lstm_cell_3/dropout_7/CastCast,while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_7/CastÊ
!while/lstm_cell_3/dropout_7/Mul_1Mul#while/lstm_cell_3/dropout_7/Mul:z:0$while/lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_7/Mul_1¾
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mulÄ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_1Ä
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_2Ä
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_3t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpï
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_3/split­
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul³
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_1³
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_2³
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpç
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_3/split_1»
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAddÁ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_1Á
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_2Á
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_3§
while/lstm_cell_3/mul_4Mulwhile_placeholder_2%while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_4§
while/lstm_cell_3/mul_5Mulwhile_placeholder_2%while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_5§
while/lstm_cell_3/mul_6Mulwhile_placeholder_2%while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_6§
while/lstm_cell_3/mul_7Mulwhile_placeholder_2%while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_7±
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2è
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice»
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_4³
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoidµ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ô
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1½
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_5¹
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_1¡
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_8µ
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ô
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2½
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_6¹
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh¦
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_9§
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_3µ
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ô
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3½
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_7¹
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh_1¬
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3æ
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4å
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
õ
Å
while_body_68419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resource¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
while/lstm_cell_3/dropout/ConstÇ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Øþ28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&while/lstm_cell_3/dropout/GreaterEqualµ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_3/dropout/CastÂ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_1/ConstÍ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2©Ì2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_1/GreaterEqual»
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_1/CastÊ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_2/ConstÍ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ë:2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_2/GreaterEqual»
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_2/CastÊ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_3/ConstÍ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÔÈÆ2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_3/dropout_3/GreaterEqual»
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_3/dropout_3/CastÊ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_3/dropout_3/Mul_1
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÔ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/ones_like_1
!while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_4/ConstÏ
while/lstm_cell_3/dropout_4/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_4/Mul
!while/lstm_cell_3/dropout_4/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_4/Shape
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ýµ2:
8while/lstm_cell_3/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_4/GreaterEqual/y
(while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_4/GreaterEqual»
 while/lstm_cell_3/dropout_4/CastCast,while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_4/CastÊ
!while/lstm_cell_3/dropout_4/Mul_1Mul#while/lstm_cell_3/dropout_4/Mul:z:0$while/lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_4/Mul_1
!while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_5/ConstÏ
while/lstm_cell_3/dropout_5/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_5/Mul
!while/lstm_cell_3/dropout_5/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_5/Shape
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ö2:
8while/lstm_cell_3/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_5/GreaterEqual/y
(while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_5/GreaterEqual»
 while/lstm_cell_3/dropout_5/CastCast,while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_5/CastÊ
!while/lstm_cell_3/dropout_5/Mul_1Mul#while/lstm_cell_3/dropout_5/Mul:z:0$while/lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_5/Mul_1
!while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_6/ConstÏ
while/lstm_cell_3/dropout_6/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_6/Mul
!while/lstm_cell_3/dropout_6/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_6/Shape
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed22:
8while/lstm_cell_3/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_6/GreaterEqual/y
(while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_6/GreaterEqual»
 while/lstm_cell_3/dropout_6/CastCast,while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_6/CastÊ
!while/lstm_cell_3/dropout_6/Mul_1Mul#while/lstm_cell_3/dropout_6/Mul:z:0$while/lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_6/Mul_1
!while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_3/dropout_7/ConstÏ
while/lstm_cell_3/dropout_7/MulMul&while/lstm_cell_3/ones_like_1:output:0*while/lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
while/lstm_cell_3/dropout_7/Mul
!while/lstm_cell_3/dropout_7/ShapeShape&while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_7/Shape
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ë{2:
8while/lstm_cell_3/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_3/dropout_7/GreaterEqual/y
(while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(while/lstm_cell_3/dropout_7/GreaterEqual»
 while/lstm_cell_3/dropout_7/CastCast,while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 while/lstm_cell_3/dropout_7/CastÊ
!while/lstm_cell_3/dropout_7/Mul_1Mul#while/lstm_cell_3/dropout_7/Mul:z:0$while/lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!while/lstm_cell_3/dropout_7/Mul_1¾
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mulÄ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_1Ä
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_2Ä
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_3t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpï
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_3/split­
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul³
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_1³
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_2³
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpç
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_3/split_1»
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAddÁ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_1Á
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_2Á
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_3§
while/lstm_cell_3/mul_4Mulwhile_placeholder_2%while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_4§
while/lstm_cell_3/mul_5Mulwhile_placeholder_2%while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_5§
while/lstm_cell_3/mul_6Mulwhile_placeholder_2%while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_6§
while/lstm_cell_3/mul_7Mulwhile_placeholder_2%while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_7±
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2è
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice»
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_4³
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoidµ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ô
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1½
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_5¹
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_1¡
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_8µ
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ô
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2½
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_6¹
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh¦
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_9§
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_3µ
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ô
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3½
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_7¹
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh_1¬
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3æ
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4å
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
î	
Û
B__inference_dense_3_layer_call_and_return_conditional_losses_71262

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
î	
Û
B__inference_dense_3_layer_call_and_return_conditional_losses_68945

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¬
þ
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_67585

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Î¾ë2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2£ù2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2©æÙ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2â2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÙ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¿¼»2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/GreaterEqual/yÆ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2²Î2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/GreaterEqual/yÆ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÙ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ºÀ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/GreaterEqual/yÆ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeØ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¼G2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/GreaterEqual/yÆ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 È*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:È*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_namestates
·
Ë
+__inference_lstm_cell_3_layer_call_fn_71537

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_676692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
¦
¾
while_cond_70086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_70086___redundant_placeholder03
/while_while_cond_70086___redundant_placeholder13
/while_while_cond_70086___redundant_placeholder23
/while_while_cond_70086___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
©
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69894

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

È
,__inference_sequential_3_layer_call_fn_69022
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_690072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+
_user_specified_nameembedding_3_input
ù	
Ê
lstm_3_while_cond_69634*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1A
=lstm_3_while_lstm_3_while_cond_69634___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_69634___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_69634___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_69634___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
å
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69857

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ :T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
ò
º

lstm_3_while_body_69294*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0>
:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_06
2lstm_3_while_lstm_cell_3_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor:
6lstm_3_while_lstm_cell_3_split_readvariableop_resource<
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource4
0lstm_3_while_lstm_cell_3_readvariableop_resource¢'lstm_3/while/lstm_cell_3/ReadVariableOp¢)lstm_3/while/lstm_cell_3/ReadVariableOp_1¢)lstm_3/while/lstm_cell_3/ReadVariableOp_2¢)lstm_3/while/lstm_cell_3/ReadVariableOp_3¢-lstm_3/while/lstm_cell_3/split/ReadVariableOp¢/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpÑ
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem»
(lstm_3/while/lstm_cell_3/ones_like/ShapeShape7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/ones_like/Shape
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_3/while/lstm_cell_3/ones_like/Constè
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_3/while/lstm_cell_3/ones_like
&lstm_3/while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2(
&lstm_3/while/lstm_cell_3/dropout/Constã
$lstm_3/while/lstm_cell_3/dropout/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:0/lstm_3/while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_3/while/lstm_cell_3/dropout/Mul«
&lstm_3/while/lstm_cell_3/dropout/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_3/while/lstm_cell_3/dropout/Shape
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform/lstm_3/while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2þ¨m2?
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform§
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?21
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y¢
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualGreaterEqualFlstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:08lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualÊ
%lstm_3/while/lstm_cell_3/dropout/CastCast1lstm_3/while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_3/while/lstm_cell_3/dropout/CastÞ
&lstm_3/while/lstm_cell_3/dropout/Mul_1Mul(lstm_3/while/lstm_cell_3/dropout/Mul:z:0)lstm_3/while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_3/while/lstm_cell_3/dropout/Mul_1
(lstm_3/while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_1/Consté
&lstm_3/while/lstm_cell_3/dropout_1/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_3/while/lstm_cell_3/dropout_1/Mul¯
(lstm_3/while/lstm_cell_3/dropout_1/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_1/Shape¤
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ù¿³2A
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_1/CastCast3lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_3/while/lstm_cell_3/dropout_1/Castæ
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_1/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1
(lstm_3/while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_2/Consté
&lstm_3/while/lstm_cell_3/dropout_2/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_3/while/lstm_cell_3/dropout_2/Mul¯
(lstm_3/while/lstm_cell_3/dropout_2/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_2/Shape¤
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2·¾2A
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_2/CastCast3lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_3/while/lstm_cell_3/dropout_2/Castæ
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_2/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1
(lstm_3/while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_3/Consté
&lstm_3/while/lstm_cell_3/dropout_3/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_3/while/lstm_cell_3/dropout_3/Mul¯
(lstm_3/while/lstm_cell_3/dropout_3/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_3/Shape¤
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2´ôð2A
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_3/CastCast3lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_3/while/lstm_cell_3/dropout_3/Castæ
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_3/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1¢
*lstm_3/while/lstm_cell_3/ones_like_1/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_3/while/lstm_cell_3/ones_like_1/Shape
*lstm_3/while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_3/while/lstm_cell_3/ones_like_1/Constð
$lstm_3/while/lstm_cell_3/ones_like_1Fill3lstm_3/while/lstm_cell_3/ones_like_1/Shape:output:03lstm_3/while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$lstm_3/while/lstm_cell_3/ones_like_1
(lstm_3/while/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_4/Constë
&lstm_3/while/lstm_cell_3/dropout_4/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&lstm_3/while/lstm_cell_3/dropout_4/Mul±
(lstm_3/while/lstm_cell_3/dropout_4/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_4/Shape¤
?lstm_3/while/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2 £2A
?lstm_3/while/lstm_cell_3/dropout_4/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/lstm_3/while/lstm_cell_3/dropout_4/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_4/CastCast3lstm_3/while/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_3/while/lstm_cell_3/dropout_4/Castæ
(lstm_3/while/lstm_cell_3/dropout_4/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_4/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_3/while/lstm_cell_3/dropout_4/Mul_1
(lstm_3/while/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_5/Constë
&lstm_3/while/lstm_cell_3/dropout_5/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&lstm_3/while/lstm_cell_3/dropout_5/Mul±
(lstm_3/while/lstm_cell_3/dropout_5/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_5/Shape¤
?lstm_3/while/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2µ2A
?lstm_3/while/lstm_cell_3/dropout_5/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/lstm_3/while/lstm_cell_3/dropout_5/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_5/CastCast3lstm_3/while/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_3/while/lstm_cell_3/dropout_5/Castæ
(lstm_3/while/lstm_cell_3/dropout_5/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_5/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_3/while/lstm_cell_3/dropout_5/Mul_1
(lstm_3/while/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_6/Constë
&lstm_3/while/lstm_cell_3/dropout_6/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&lstm_3/while/lstm_cell_3/dropout_6/Mul±
(lstm_3/while/lstm_cell_3/dropout_6/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_6/Shape¤
?lstm_3/while/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2®½2A
?lstm_3/while/lstm_cell_3/dropout_6/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/lstm_3/while/lstm_cell_3/dropout_6/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_6/CastCast3lstm_3/while/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_3/while/lstm_cell_3/dropout_6/Castæ
(lstm_3/while/lstm_cell_3/dropout_6/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_6/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_3/while/lstm_cell_3/dropout_6/Mul_1
(lstm_3/while/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_3/while/lstm_cell_3/dropout_7/Constë
&lstm_3/while/lstm_cell_3/dropout_7/MulMul-lstm_3/while/lstm_cell_3/ones_like_1:output:01lstm_3/while/lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&lstm_3/while/lstm_cell_3/dropout_7/Mul±
(lstm_3/while/lstm_cell_3/dropout_7/ShapeShape-lstm_3/while/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_7/Shape£
?lstm_3/while/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2µñj2A
?lstm_3/while/lstm_cell_3/dropout_7/random_uniform/RandomUniform«
1lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual/yª
/lstm_3/while/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ221
/lstm_3/while/lstm_cell_3/dropout_7/GreaterEqualÐ
'lstm_3/while/lstm_cell_3/dropout_7/CastCast3lstm_3/while/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'lstm_3/while/lstm_cell_3/dropout_7/Castæ
(lstm_3/while/lstm_cell_3/dropout_7/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_7/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(lstm_3/while/lstm_cell_3/dropout_7/Mul_1Ú
lstm_3/while/lstm_cell_3/mulMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_3/while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/while/lstm_cell_3/mulà
lstm_3/while/lstm_cell_3/mul_1Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/while/lstm_cell_3/mul_1à
lstm_3/while/lstm_cell_3/mul_2Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/while/lstm_cell_3/mul_2à
lstm_3/while/lstm_cell_3/mul_3Mul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_3/while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/while/lstm_cell_3/mul_3
lstm_3/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_3/while/lstm_cell_3/Const
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dimØ
-lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02/
-lstm_3/while/lstm_cell_3/split/ReadVariableOp
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:05lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2 
lstm_3/while/lstm_cell_3/splitÉ
lstm_3/while/lstm_cell_3/MatMulMatMul lstm_3/while/lstm_cell_3/mul:z:0'lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_3/while/lstm_cell_3/MatMulÏ
!lstm_3/while/lstm_cell_3/MatMul_1MatMul"lstm_3/while/lstm_cell_3/mul_1:z:0'lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_1Ï
!lstm_3/while/lstm_cell_3/MatMul_2MatMul"lstm_3/while/lstm_cell_3/mul_2:z:0'lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_2Ï
!lstm_3/while/lstm_cell_3/MatMul_3MatMul"lstm_3/while/lstm_cell_3/mul_3:z:0'lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_3
 lstm_3/while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_3/while/lstm_cell_3/Const_1
*lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_3/while/lstm_cell_3/split_1/split_dimÚ
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype021
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp
 lstm_3/while/lstm_cell_3/split_1Split3lstm_3/while/lstm_cell_3/split_1/split_dim:output:07lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2"
 lstm_3/while/lstm_cell_3/split_1×
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd)lstm_3/while/lstm_cell_3/MatMul:product:0)lstm_3/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/while/lstm_cell_3/BiasAddÝ
"lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_3/while/lstm_cell_3/MatMul_1:product:0)lstm_3/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/BiasAdd_1Ý
"lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_3/while/lstm_cell_3/MatMul_2:product:0)lstm_3/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/BiasAdd_2Ý
"lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_3/while/lstm_cell_3/MatMul_3:product:0)lstm_3/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/BiasAdd_3Ã
lstm_3/while/lstm_cell_3/mul_4Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_4Ã
lstm_3/while/lstm_cell_3/mul_5Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_5Ã
lstm_3/while/lstm_cell_3/mul_6Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_6Ã
lstm_3/while/lstm_cell_3/mul_7Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_7Æ
'lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02)
'lstm_3/while/lstm_cell_3/ReadVariableOp­
,lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_3/while/lstm_cell_3/strided_slice/stack±
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_3/while/lstm_cell_3/strided_slice/stack_1±
.lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice/stack_2
&lstm_3/while/lstm_cell_3/strided_sliceStridedSlice/lstm_3/while/lstm_cell_3/ReadVariableOp:value:05lstm_3/while/lstm_cell_3/strided_slice/stack:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2(
&lstm_3/while/lstm_cell_3/strided_slice×
!lstm_3/while/lstm_cell_3/MatMul_4MatMul"lstm_3/while/lstm_cell_3/mul_4:z:0/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_4Ï
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/BiasAdd:output:0+lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/lstm_cell_3/add£
 lstm_3/while/lstm_cell_3/SigmoidSigmoid lstm_3/while/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/while/lstm_cell_3/SigmoidÊ
)lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_1±
.lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_3/while/lstm_cell_3/strided_slice_1/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_1Ù
!lstm_3/while/lstm_cell_3/MatMul_5MatMul"lstm_3/while/lstm_cell_3/mul_5:z:01lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_5Õ
lstm_3/while/lstm_cell_3/add_1AddV2+lstm_3/while/lstm_cell_3/BiasAdd_1:output:0+lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_1©
"lstm_3/while/lstm_cell_3/Sigmoid_1Sigmoid"lstm_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/Sigmoid_1½
lstm_3/while/lstm_cell_3/mul_8Mul&lstm_3/while/lstm_cell_3/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_8Ê
)lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_2±
.lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   20
.lstm_3/while/lstm_cell_3/strided_slice_2/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_2Ù
!lstm_3/while/lstm_cell_3/MatMul_6MatMul"lstm_3/while/lstm_cell_3/mul_6:z:01lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_6Õ
lstm_3/while/lstm_cell_3/add_2AddV2+lstm_3/while/lstm_cell_3/BiasAdd_2:output:0+lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_2
lstm_3/while/lstm_cell_3/TanhTanh"lstm_3/while/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/lstm_cell_3/TanhÂ
lstm_3/while/lstm_cell_3/mul_9Mul$lstm_3/while/lstm_cell_3/Sigmoid:y:0!lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/mul_9Ã
lstm_3/while/lstm_cell_3/add_3AddV2"lstm_3/while/lstm_cell_3/mul_8:z:0"lstm_3/while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_3Ê
)lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_3±
.lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.lstm_3/while/lstm_cell_3/strided_slice_3/stackµ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1µ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_3Ù
!lstm_3/while/lstm_cell_3/MatMul_7MatMul"lstm_3/while/lstm_cell_3/mul_7:z:01lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/while/lstm_cell_3/MatMul_7Õ
lstm_3/while/lstm_cell_3/add_4AddV2+lstm_3/while/lstm_cell_3/BiasAdd_3:output:0+lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/while/lstm_cell_3/add_4©
"lstm_3/while/lstm_cell_3/Sigmoid_2Sigmoid"lstm_3/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/while/lstm_cell_3/Sigmoid_2 
lstm_3/while/lstm_cell_3/Tanh_1Tanh"lstm_3/while/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_3/while/lstm_cell_3/Tanh_1È
lstm_3/while/lstm_cell_3/mul_10Mul&lstm_3/while/lstm_cell_3/Sigmoid_2:y:0#lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
lstm_3/while/lstm_cell_3/mul_10
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder#lstm_3/while/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2²
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3¥
lstm_3/while/Identity_4Identity#lstm_3/while/lstm_cell_3/mul_10:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/Identity_4¤
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_3:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"f
0lstm_3_while_lstm_cell_3_readvariableop_resource2lstm_3_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_3_while_lstm_cell_3_split_readvariableop_resource8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"Ä
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2R
'lstm_3/while/lstm_cell_3/ReadVariableOp'lstm_3/while/lstm_cell_3/ReadVariableOp2V
)lstm_3/while/lstm_cell_3/ReadVariableOp_1)lstm_3/while/lstm_cell_3/ReadVariableOp_12V
)lstm_3/while/lstm_cell_3/ReadVariableOp_2)lstm_3/while/lstm_cell_3/ReadVariableOp_22V
)lstm_3/while/lstm_cell_3/ReadVariableOp_3)lstm_3/while/lstm_cell_3/ReadVariableOp_32^
-lstm_3/while/lstm_cell_3/split/ReadVariableOp-lstm_3/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
º
O
3__inference_spatial_dropout1d_3_layer_call_fn_69867

inputs
identityÑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_682252
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ :T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
Ç
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_68921

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

E
)__inference_dropout_3_layer_call_fn_71251

inputs
identityÂ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_689212
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¦
¾
while_cond_70746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_70746___redundant_placeholder03
/while_while_cond_70746___redundant_placeholder13
/while_while_cond_70746___redundant_placeholder23
/while_while_cond_70746___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:

b
)__inference_dropout_3_layer_call_fn_71246

inputs
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_689162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
á	

F__inference_embedding_3_layer_call_and_return_conditional_losses_68187

inputs
embedding_lookup_68181
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Castü
embedding_lookupResourceGatherembedding_lookup_68181Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/68181*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/68181*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
¼
³
A__inference_lstm_3_layer_call_and_return_conditional_losses_68874

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identity¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/ones_like|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const¼
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/ones_like_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_3h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02"
 lstm_cell_3/split/ReadVariableOp×
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÏ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_3/split_1£
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd©
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_1©
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_2©
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ä
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice£
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add|
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid¡
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ð
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¥
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_5¡
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_8¡
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ð
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¥
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_6¡
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_2u
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_3¡
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ð
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¥
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_7¡
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_68738*
condR
while_cond_68737*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¶
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÈ :::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
»

F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_71419

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÓ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Õ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeØ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¡¸^2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/GreaterEqual/yÆ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÙ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ºÄ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/GreaterEqual/yÆ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÙ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¶Û2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/GreaterEqual/yÆ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÙ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2§2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/GreaterEqual/yÆ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2éÔ2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/GreaterEqual/yÆ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÙ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ã2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/GreaterEqual/yÆ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeØ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2&2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/GreaterEqual/yÆ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 È*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:È*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
«÷
³
A__inference_lstm_3_layer_call_and_return_conditional_losses_68619

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identity¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout/Const¯
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shape÷
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2óßµ22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_cell_3/dropout/GreaterEqual/yî
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_cell_3/dropout/GreaterEqual£
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Castª
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_1/Constµ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeý
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2·Î24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_1/GreaterEqual/yö
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_1/GreaterEqual©
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Cast²
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_2/Constµ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeý
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2»­µ24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_2/GreaterEqual/yö
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_2/GreaterEqual©
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Cast²
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_3/Constµ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeü
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Î¶24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_3/GreaterEqual/yö
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_3/GreaterEqual©
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Cast²
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Mul_1|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const¼
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/ones_like_1
lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_4/Const·
lstm_cell_3/dropout_4/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Mul
lstm_cell_3/dropout_4/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_4/Shapeý
2lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Çµ¯24
2lstm_cell_3/dropout_4/random_uniform/RandomUniform
$lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_4/GreaterEqual/yö
"lstm_cell_3/dropout_4/GreaterEqualGreaterEqual;lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_4/GreaterEqual©
lstm_cell_3/dropout_4/CastCast&lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Cast²
lstm_cell_3/dropout_4/Mul_1Mullstm_cell_3/dropout_4/Mul:z:0lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Mul_1
lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_5/Const·
lstm_cell_3/dropout_5/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Mul
lstm_cell_3/dropout_5/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_5/Shapeý
2lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ýø24
2lstm_cell_3/dropout_5/random_uniform/RandomUniform
$lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_5/GreaterEqual/yö
"lstm_cell_3/dropout_5/GreaterEqualGreaterEqual;lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_5/GreaterEqual©
lstm_cell_3/dropout_5/CastCast&lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Cast²
lstm_cell_3/dropout_5/Mul_1Mullstm_cell_3/dropout_5/Mul:z:0lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Mul_1
lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_6/Const·
lstm_cell_3/dropout_6/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Mul
lstm_cell_3/dropout_6/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_6/Shapeý
2lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¹µÊ24
2lstm_cell_3/dropout_6/random_uniform/RandomUniform
$lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_6/GreaterEqual/yö
"lstm_cell_3/dropout_6/GreaterEqualGreaterEqual;lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_6/GreaterEqual©
lstm_cell_3/dropout_6/CastCast&lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Cast²
lstm_cell_3/dropout_6/Mul_1Mullstm_cell_3/dropout_6/Mul:z:0lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Mul_1
lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_7/Const·
lstm_cell_3/dropout_7/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Mul
lstm_cell_3/dropout_7/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_7/Shapeý
2lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ºÿ¶24
2lstm_cell_3/dropout_7/random_uniform/RandomUniform
$lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_7/GreaterEqual/yö
"lstm_cell_3/dropout_7/GreaterEqualGreaterEqual;lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_7/GreaterEqual©
lstm_cell_3/dropout_7/CastCast&lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Cast²
lstm_cell_3/dropout_7/Mul_1Mullstm_cell_3/dropout_7/Mul:z:0lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Mul_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_3h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02"
 lstm_cell_3/split/ReadVariableOp×
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÏ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_3/split_1£
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd©
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_1©
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_2©
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ä
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice£
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add|
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid¡
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ð
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¥
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_5¡
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_8¡
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ð
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¥
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_6¡
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_2u
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_3¡
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ð
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¥
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_7¡
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_68419*
condR
while_cond_68418*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¶
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÈ :::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
ÿ
O
3__inference_spatial_dropout1d_3_layer_call_fn_69904

inputs
identityâ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_673942
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
¾
while_cond_71065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_71065___redundant_placeholder03
/while_while_cond_71065___redundant_placeholder13
/while_while_cond_71065___redundant_placeholder23
/while_while_cond_71065___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
Ë
Â
G__inference_sequential_3_layer_call_and_return_conditional_losses_69045

inputs
embedding_3_69027
lstm_3_69031
lstm_3_69033
lstm_3_69035
dense_3_69039
dense_3_69041
identity¢dense_3/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_69027*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_681872%
#embedding_3/StatefulPartitionedCall
#spatial_dropout1d_3/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_682252%
#spatial_dropout1d_3/PartitionedCall½
lstm_3/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_3/PartitionedCall:output:0lstm_3_69031lstm_3_69033lstm_3_69035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_688742 
lstm_3/StatefulPartitionedCall÷
dropout_3/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_689212
dropout_3/PartitionedCall¨
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_69039dense_3_69041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_689452!
dense_3/StatefulPartitionedCallå
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs


&__inference_lstm_3_layer_call_fn_71213

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_686192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÈ :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
í
µ
A__inference_lstm_3_layer_call_and_return_conditional_losses_70542
inputs_0-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identity¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/ones_like|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const¼
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/ones_like_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_3h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02"
 lstm_cell_3/split/ReadVariableOp×
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÏ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_3/split_1£
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd©
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_1©
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_2©
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0 lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ä
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice£
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add|
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid¡
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ð
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¥
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_5¡
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_8¡
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ð
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¥
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_6¡
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_2u
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_3¡
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ð
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¥
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_7¡
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_70406*
condR
while_cond_70405*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¶
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
Ý÷
µ
A__inference_lstm_3_layer_call_and_return_conditional_losses_70287
inputs_0-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identity¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout/Const¯
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shape÷
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2£22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_cell_3/dropout/GreaterEqual/yî
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_cell_3/dropout/GreaterEqual£
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Castª
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_1/Constµ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeý
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2öã24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_1/GreaterEqual/yö
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_1/GreaterEqual©
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Cast²
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_2/Constµ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeý
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2úó24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_2/GreaterEqual/yö
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_2/GreaterEqual©
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Cast²
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_3/Constµ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeý
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ìã24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_3/GreaterEqual/yö
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_3/GreaterEqual©
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Cast²
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Mul_1|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const¼
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/ones_like_1
lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_4/Const·
lstm_cell_3/dropout_4/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Mul
lstm_cell_3/dropout_4/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_4/Shapeý
2lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2À24
2lstm_cell_3/dropout_4/random_uniform/RandomUniform
$lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_4/GreaterEqual/yö
"lstm_cell_3/dropout_4/GreaterEqualGreaterEqual;lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_4/GreaterEqual©
lstm_cell_3/dropout_4/CastCast&lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Cast²
lstm_cell_3/dropout_4/Mul_1Mullstm_cell_3/dropout_4/Mul:z:0lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Mul_1
lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_5/Const·
lstm_cell_3/dropout_5/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Mul
lstm_cell_3/dropout_5/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_5/Shapeý
2lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2°¹à24
2lstm_cell_3/dropout_5/random_uniform/RandomUniform
$lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_5/GreaterEqual/yö
"lstm_cell_3/dropout_5/GreaterEqualGreaterEqual;lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_5/GreaterEqual©
lstm_cell_3/dropout_5/CastCast&lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Cast²
lstm_cell_3/dropout_5/Mul_1Mullstm_cell_3/dropout_5/Mul:z:0lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Mul_1
lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_6/Const·
lstm_cell_3/dropout_6/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Mul
lstm_cell_3/dropout_6/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_6/Shapeý
2lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2³ó´24
2lstm_cell_3/dropout_6/random_uniform/RandomUniform
$lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_6/GreaterEqual/yö
"lstm_cell_3/dropout_6/GreaterEqualGreaterEqual;lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_6/GreaterEqual©
lstm_cell_3/dropout_6/CastCast&lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Cast²
lstm_cell_3/dropout_6/Mul_1Mullstm_cell_3/dropout_6/Mul:z:0lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Mul_1
lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_7/Const·
lstm_cell_3/dropout_7/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Mul
lstm_cell_3/dropout_7/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_7/Shapeý
2lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¿¤´24
2lstm_cell_3/dropout_7/random_uniform/RandomUniform
$lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_7/GreaterEqual/yö
"lstm_cell_3/dropout_7/GreaterEqualGreaterEqual;lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_7/GreaterEqual©
lstm_cell_3/dropout_7/CastCast&lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Cast²
lstm_cell_3/dropout_7/Mul_1Mullstm_cell_3/dropout_7/Mul:z:0lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Mul_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_3h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02"
 lstm_cell_3/split/ReadVariableOp×
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÏ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_3/split_1£
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd©
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_1©
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_2©
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ä
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice£
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add|
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid¡
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ð
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¥
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_5¡
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_8¡
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ð
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¥
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_6¡
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_2u
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_3¡
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ð
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¥
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_7¡
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_70087*
condR
while_cond_70086*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¶
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
Ö
¿
#__inference_signature_wrapper_69087
embedding_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_673312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+
_user_specified_nameembedding_3_input
Ë?

__inference__traced_save_71641
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_3_embeddings_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_3_kernel_m_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_3_bias_m_read_readvariableop<
8savev2_adam_embedding_3_embeddings_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_3_kernel_v_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameî
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueöBóB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_3_embeddings_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop;savev2_adam_lstm_3_lstm_cell_3_kernel_m_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_3_lstm_cell_3_bias_m_read_readvariableop8savev2_adam_embedding_3_embeddings_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop;savev2_adam_lstm_3_lstm_cell_3_kernel_v_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_3_lstm_cell_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ó
_input_shapesÁ
¾: :	ºN :2:: : : : : :	 È:	2È:È: : : : :	ºN :2::	 È:	2È:È:	ºN :2::	 È:	2È:È: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ºN :$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	 È:%
!

_output_shapes
:	2È:!

_output_shapes	
:È:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ºN :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	 È:%!

_output_shapes
:	2È:!

_output_shapes	
:È:%!

_output_shapes
:	ºN :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	 È:%!

_output_shapes
:	2È:!

_output_shapes	
:È:

_output_shapes
: 
¦
¾
while_cond_70405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_70405___redundant_placeholder03
/while_while_cond_70405___redundant_placeholder13
/while_while_cond_70405___redundant_placeholder23
/while_while_cond_70405___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
å
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_68225

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ :T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs

Î
$sequential_3_lstm_3_while_cond_67186D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3F
Bsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1[
Wsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_67186___redundant_placeholder0[
Wsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_67186___redundant_placeholder1[
Wsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_67186___redundant_placeholder2[
Wsequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_67186___redundant_placeholder3&
"sequential_3_lstm_3_while_identity
Ô
sequential_3/lstm_3/while/LessLess%sequential_3_lstm_3_while_placeholderBsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_3/while/Less
"sequential_3/lstm_3/while/IdentityIdentity"sequential_3/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_3/while/Identity"Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ù	
Ê
lstm_3_while_cond_69293*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1A
=lstm_3_while_lstm_3_while_cond_69293___redundant_placeholder0A
=lstm_3_while_lstm_3_while_cond_69293___redundant_placeholder1A
=lstm_3_while_lstm_3_while_cond_69293___redundant_placeholder2A
=lstm_3_while_lstm_3_while_cond_69293___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ÀN

F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_71503

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 È*
dtype02
split/ReadVariableOp§
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:È*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ü
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2È*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
mul_10Ø
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

IdentityÜ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1Û

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
states/1
Ì
q
+__inference_embedding_3_layer_call_fn_69830

inputs
unknown
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_681872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ:22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
©
l
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_67394

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì$

while_body_67963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_3_67987_0
while_lstm_cell_3_67989_0
while_lstm_cell_3_67991_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_3_67987
while_lstm_cell_3_67989
while_lstm_cell_3_67991¢)while/lstm_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem×
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_67987_0while_lstm_cell_3_67989_0while_lstm_cell_3_67991_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_675852+
)while/lstm_cell_3/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Â
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4Â
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_3_67987while_lstm_cell_3_67987_0"4
while_lstm_cell_3_67989while_lstm_cell_3_67989_0"4
while_lstm_cell_3_67991while_lstm_cell_3_67991_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
¦
¾
while_cond_68418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_68418___redundant_placeholder03
/while_while_cond_68418___redundant_placeholder13
/while_while_cond_68418___redundant_placeholder23
/while_while_cond_68418___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
:
ÃÓ
à
G__inference_sequential_3_layer_call_and_return_conditional_losses_69509

inputs&
"embedding_3_embedding_lookup_690914
0lstm_3_lstm_cell_3_split_readvariableop_resource6
2lstm_3_lstm_cell_3_split_1_readvariableop_resource.
*lstm_3_lstm_cell_3_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢embedding_3/embedding_lookup¢!lstm_3/lstm_cell_3/ReadVariableOp¢#lstm_3/lstm_cell_3/ReadVariableOp_1¢#lstm_3/lstm_cell_3/ReadVariableOp_2¢#lstm_3/lstm_cell_3/ReadVariableOp_3¢'lstm_3/lstm_cell_3/split/ReadVariableOp¢)lstm_3/lstm_cell_3/split_1/ReadVariableOp¢lstm_3/whilev
embedding_3/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
embedding_3/Cast¸
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_69091embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/69091*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *
dtype02
embedding_3/embedding_lookup
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/69091*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2'
%embedding_3/embedding_lookup/IdentityÅ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2)
'embedding_3/embedding_lookup/Identity_1
spatial_dropout1d_3/ShapeShape0embedding_3/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_3/Shape
'spatial_dropout1d_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_3/strided_slice/stack 
)spatial_dropout1d_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_3/strided_slice/stack_1 
)spatial_dropout1d_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_3/strided_slice/stack_2Ú
!spatial_dropout1d_3/strided_sliceStridedSlice"spatial_dropout1d_3/Shape:output:00spatial_dropout1d_3/strided_slice/stack:output:02spatial_dropout1d_3/strided_slice/stack_1:output:02spatial_dropout1d_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_3/strided_slice 
)spatial_dropout1d_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_3/strided_slice_1/stack¤
+spatial_dropout1d_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_3/strided_slice_1/stack_1¤
+spatial_dropout1d_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_3/strided_slice_1/stack_2ä
#spatial_dropout1d_3/strided_slice_1StridedSlice"spatial_dropout1d_3/Shape:output:02spatial_dropout1d_3/strided_slice_1/stack:output:04spatial_dropout1d_3/strided_slice_1/stack_1:output:04spatial_dropout1d_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_3/strided_slice_1
!spatial_dropout1d_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?2#
!spatial_dropout1d_3/dropout/ConstÞ
spatial_dropout1d_3/dropout/MulMul0embedding_3/embedding_lookup/Identity_1:output:0*spatial_dropout1d_3/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2!
spatial_dropout1d_3/dropout/Mulª
2spatial_dropout1d_3/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_3/dropout/random_uniform/shape/1±
0spatial_dropout1d_3/dropout/random_uniform/shapePack*spatial_dropout1d_3/strided_slice:output:0;spatial_dropout1d_3/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_3/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_3/dropout/random_uniform/shape
8spatial_dropout1d_3/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_3/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02:
8spatial_dropout1d_3/dropout/random_uniform/RandomUniform
*spatial_dropout1d_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >2,
*spatial_dropout1d_3/dropout/GreaterEqual/y
(spatial_dropout1d_3/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_3/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_3/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
(spatial_dropout1d_3/dropout/GreaterEqualÈ
 spatial_dropout1d_3/dropout/CastCast,spatial_dropout1d_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 spatial_dropout1d_3/dropout/CastÏ
!spatial_dropout1d_3/dropout/Mul_1Mul#spatial_dropout1d_3/dropout/Mul:z:0$spatial_dropout1d_3/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2#
!spatial_dropout1d_3/dropout/Mul_1q
lstm_3/ShapeShape%spatial_dropout1d_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros/mul/y
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_3/zeros/Less/y
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros/packed/1
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros_1/mul/y
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_3/zeros_1/Less/y
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_3/zeros_1/packed/1¥
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/zeros_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm¯
lstm_3/transpose	Transpose%spatial_dropout1d_3/dropout/Mul_1:z:0lstm_3/transpose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_3/TensorArrayV2/element_shapeÎ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Í
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2¦
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_3/strided_slice_2
"lstm_3/lstm_cell_3/ones_like/ShapeShapelstm_3/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/ones_like/Shape
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_3/lstm_cell_3/ones_like/ConstÐ
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/ones_like
 lstm_3/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 lstm_3/lstm_cell_3/dropout/ConstË
lstm_3/lstm_cell_3/dropout/MulMul%lstm_3/lstm_cell_3/ones_like:output:0)lstm_3/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_3/lstm_cell_3/dropout/Mul
 lstm_3/lstm_cell_3/dropout/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_3/lstm_cell_3/dropout/Shape
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform)lstm_3/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¾ø29
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform
)lstm_3/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_3/lstm_cell_3/dropout/GreaterEqual/y
'lstm_3/lstm_cell_3/dropout/GreaterEqualGreaterEqual@lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform:output:02lstm_3/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_3/lstm_cell_3/dropout/GreaterEqual¸
lstm_3/lstm_cell_3/dropout/CastCast+lstm_3/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_3/lstm_cell_3/dropout/CastÆ
 lstm_3/lstm_cell_3/dropout/Mul_1Mul"lstm_3/lstm_cell_3/dropout/Mul:z:0#lstm_3/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_3/lstm_cell_3/dropout/Mul_1
"lstm_3/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_1/ConstÑ
 lstm_3/lstm_cell_3/dropout_1/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_3/lstm_cell_3/dropout_1/Mul
"lstm_3/lstm_cell_3/dropout_1/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_1/Shape
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2£2;
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_3/lstm_cell_3/dropout_1/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_1/CastCast-lstm_3/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_3/lstm_cell_3/dropout_1/CastÎ
"lstm_3/lstm_cell_3/dropout_1/Mul_1Mul$lstm_3/lstm_cell_3/dropout_1/Mul:z:0%lstm_3/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_3/lstm_cell_3/dropout_1/Mul_1
"lstm_3/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_2/ConstÑ
 lstm_3/lstm_cell_3/dropout_2/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_3/lstm_cell_3/dropout_2/Mul
"lstm_3/lstm_cell_3/dropout_2/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_2/Shape
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÿ±2;
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_3/lstm_cell_3/dropout_2/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_2/CastCast-lstm_3/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_3/lstm_cell_3/dropout_2/CastÎ
"lstm_3/lstm_cell_3/dropout_2/Mul_1Mul$lstm_3/lstm_cell_3/dropout_2/Mul:z:0%lstm_3/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_3/lstm_cell_3/dropout_2/Mul_1
"lstm_3/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_3/ConstÑ
 lstm_3/lstm_cell_3/dropout_3/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_3/lstm_cell_3/dropout_3/Mul
"lstm_3/lstm_cell_3/dropout_3/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_3/Shape
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ßçü2;
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_3/lstm_cell_3/dropout_3/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_3/CastCast-lstm_3/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_3/lstm_cell_3/dropout_3/CastÎ
"lstm_3/lstm_cell_3/dropout_3/Mul_1Mul$lstm_3/lstm_cell_3/dropout_3/Mul:z:0%lstm_3/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_3/lstm_cell_3/dropout_3/Mul_1
$lstm_3/lstm_cell_3/ones_like_1/ShapeShapelstm_3/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_3/lstm_cell_3/ones_like_1/Shape
$lstm_3/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_3/lstm_cell_3/ones_like_1/ConstØ
lstm_3/lstm_cell_3/ones_like_1Fill-lstm_3/lstm_cell_3/ones_like_1/Shape:output:0-lstm_3/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
lstm_3/lstm_cell_3/ones_like_1
"lstm_3/lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_4/ConstÓ
 lstm_3/lstm_cell_3/dropout_4/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/lstm_cell_3/dropout_4/Mul
"lstm_3/lstm_cell_3/dropout_4/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_4/Shape
9lstm_3/lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2÷²2;
9lstm_3/lstm_cell_3/dropout_4/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_4/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_4/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_3/lstm_cell_3/dropout_4/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_4/CastCast-lstm_3/lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/lstm_cell_3/dropout_4/CastÎ
"lstm_3/lstm_cell_3/dropout_4/Mul_1Mul$lstm_3/lstm_cell_3/dropout_4/Mul:z:0%lstm_3/lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/lstm_cell_3/dropout_4/Mul_1
"lstm_3/lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_5/ConstÓ
 lstm_3/lstm_cell_3/dropout_5/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/lstm_cell_3/dropout_5/Mul
"lstm_3/lstm_cell_3/dropout_5/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_5/Shape
9lstm_3/lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¡É2;
9lstm_3/lstm_cell_3/dropout_5/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_5/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_5/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_3/lstm_cell_3/dropout_5/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_5/CastCast-lstm_3/lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/lstm_cell_3/dropout_5/CastÎ
"lstm_3/lstm_cell_3/dropout_5/Mul_1Mul$lstm_3/lstm_cell_3/dropout_5/Mul:z:0%lstm_3/lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/lstm_cell_3/dropout_5/Mul_1
"lstm_3/lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_6/ConstÓ
 lstm_3/lstm_cell_3/dropout_6/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/lstm_cell_3/dropout_6/Mul
"lstm_3/lstm_cell_3/dropout_6/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_6/Shape
9lstm_3/lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2·í2;
9lstm_3/lstm_cell_3/dropout_6/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_6/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_6/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_3/lstm_cell_3/dropout_6/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_6/CastCast-lstm_3/lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/lstm_cell_3/dropout_6/CastÎ
"lstm_3/lstm_cell_3/dropout_6/Mul_1Mul$lstm_3/lstm_cell_3/dropout_6/Mul:z:0%lstm_3/lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/lstm_cell_3/dropout_6/Mul_1
"lstm_3/lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_3/lstm_cell_3/dropout_7/ConstÓ
 lstm_3/lstm_cell_3/dropout_7/MulMul'lstm_3/lstm_cell_3/ones_like_1:output:0+lstm_3/lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22"
 lstm_3/lstm_cell_3/dropout_7/Mul
"lstm_3/lstm_cell_3/dropout_7/ShapeShape'lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_7/Shape
9lstm_3/lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÕÌ®2;
9lstm_3/lstm_cell_3/dropout_7/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_3/lstm_cell_3/dropout_7/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_7/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)lstm_3/lstm_cell_3/dropout_7/GreaterEqual¾
!lstm_3/lstm_cell_3/dropout_7/CastCast-lstm_3/lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22#
!lstm_3/lstm_cell_3/dropout_7/CastÎ
"lstm_3/lstm_cell_3/dropout_7/Mul_1Mul$lstm_3/lstm_cell_3/dropout_7/Mul:z:0%lstm_3/lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_3/lstm_cell_3/dropout_7/Mul_1°
lstm_3/lstm_cell_3/mulMullstm_3/strided_slice_2:output:0$lstm_3/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul¶
lstm_3/lstm_cell_3/mul_1Mullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul_1¶
lstm_3/lstm_cell_3/mul_2Mullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul_2¶
lstm_3/lstm_cell_3/mul_3Mullstm_3/strided_slice_2:output:0&lstm_3/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_3/lstm_cell_3/mul_3v
lstm_3/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dimÄ
'lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02)
'lstm_3/lstm_cell_3/split/ReadVariableOpó
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_3/lstm_cell_3/split±
lstm_3/lstm_cell_3/MatMulMatMullstm_3/lstm_cell_3/mul:z:0!lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul·
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/lstm_cell_3/mul_1:z:0!lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_1·
lstm_3/lstm_cell_3/MatMul_2MatMullstm_3/lstm_cell_3/mul_2:z:0!lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_2·
lstm_3/lstm_cell_3/MatMul_3MatMullstm_3/lstm_cell_3/mul_3:z:0!lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_3z
lstm_3/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const_1
$lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_3/lstm_cell_3/split_1/split_dimÆ
)lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02+
)lstm_3/lstm_cell_3/split_1/ReadVariableOpë
lstm_3/lstm_cell_3/split_1Split-lstm_3/lstm_cell_3/split_1/split_dim:output:01lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_3/lstm_cell_3/split_1¿
lstm_3/lstm_cell_3/BiasAddBiasAdd#lstm_3/lstm_cell_3/MatMul:product:0#lstm_3/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAddÅ
lstm_3/lstm_cell_3/BiasAdd_1BiasAdd%lstm_3/lstm_cell_3/MatMul_1:product:0#lstm_3/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAdd_1Å
lstm_3/lstm_cell_3/BiasAdd_2BiasAdd%lstm_3/lstm_cell_3/MatMul_2:product:0#lstm_3/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAdd_2Å
lstm_3/lstm_cell_3/BiasAdd_3BiasAdd%lstm_3/lstm_cell_3/MatMul_3:product:0#lstm_3/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/BiasAdd_3¬
lstm_3/lstm_cell_3/mul_4Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_4¬
lstm_3/lstm_cell_3/mul_5Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_5¬
lstm_3/lstm_cell_3/mul_6Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_6¬
lstm_3/lstm_cell_3/mul_7Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_7²
!lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02#
!lstm_3/lstm_cell_3/ReadVariableOp¡
&lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_3/lstm_cell_3/strided_slice/stack¥
(lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_3/lstm_cell_3/strided_slice/stack_1¥
(lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice/stack_2î
 lstm_3/lstm_cell_3/strided_sliceStridedSlice)lstm_3/lstm_cell_3/ReadVariableOp:value:0/lstm_3/lstm_cell_3/strided_slice/stack:output:01lstm_3/lstm_cell_3/strided_slice/stack_1:output:01lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2"
 lstm_3/lstm_cell_3/strided_slice¿
lstm_3/lstm_cell_3/MatMul_4MatMullstm_3/lstm_cell_3/mul_4:z:0)lstm_3/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_4·
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/BiasAdd:output:0%lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add
lstm_3/lstm_cell_3/SigmoidSigmoidlstm_3/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Sigmoid¶
#lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_1¥
(lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_3/lstm_cell_3/strided_slice_1/stack©
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_1©
*lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_2ú
"lstm_3/lstm_cell_3/strided_slice_1StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_1:value:01lstm_3/lstm_cell_3/strided_slice_1/stack:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_1Á
lstm_3/lstm_cell_3/MatMul_5MatMullstm_3/lstm_cell_3/mul_5:z:0+lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_5½
lstm_3/lstm_cell_3/add_1AddV2%lstm_3/lstm_cell_3/BiasAdd_1:output:0%lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_1
lstm_3/lstm_cell_3/Sigmoid_1Sigmoidlstm_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Sigmoid_1¨
lstm_3/lstm_cell_3/mul_8Mul lstm_3/lstm_cell_3/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_8¶
#lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_2¥
(lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(lstm_3/lstm_cell_3/strided_slice_2/stack©
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_1©
*lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_2ú
"lstm_3/lstm_cell_3/strided_slice_2StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_2:value:01lstm_3/lstm_cell_3/strided_slice_2/stack:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_2Á
lstm_3/lstm_cell_3/MatMul_6MatMullstm_3/lstm_cell_3/mul_6:z:0+lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_6½
lstm_3/lstm_cell_3/add_2AddV2%lstm_3/lstm_cell_3/BiasAdd_2:output:0%lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_2
lstm_3/lstm_cell_3/TanhTanhlstm_3/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Tanhª
lstm_3/lstm_cell_3/mul_9Mullstm_3/lstm_cell_3/Sigmoid:y:0lstm_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_9«
lstm_3/lstm_cell_3/add_3AddV2lstm_3/lstm_cell_3/mul_8:z:0lstm_3/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_3¶
#lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_3¥
(lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/lstm_cell_3/strided_slice_3/stack©
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_1©
*lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_2ú
"lstm_3/lstm_cell_3/strided_slice_3StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_3:value:01lstm_3/lstm_cell_3/strided_slice_3/stack:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_3Á
lstm_3/lstm_cell_3/MatMul_7MatMullstm_3/lstm_cell_3/mul_7:z:0+lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/MatMul_7½
lstm_3/lstm_cell_3/add_4AddV2%lstm_3/lstm_cell_3/BiasAdd_3:output:0%lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/add_4
lstm_3/lstm_cell_3/Sigmoid_2Sigmoidlstm_3/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Sigmoid_2
lstm_3/lstm_cell_3/Tanh_1Tanhlstm_3/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/Tanh_1°
lstm_3/lstm_cell_3/mul_10Mul lstm_3/lstm_cell_3/Sigmoid_2:y:0lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_3/lstm_cell_3/mul_10
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2&
$lstm_3/TensorArrayV2_1/element_shapeÔ
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterÈ
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_3_lstm_cell_3_split_readvariableop_resource2lstm_3_lstm_cell_3_split_1_readvariableop_resource*lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*#
bodyR
lstm_3_while_body_69294*#
condR
lstm_3_while_cond_69293*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
lstm_3/whileÃ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_3/strided_slice_3/stack
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2Ä
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
lstm_3/strided_slice_3
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permÂ
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtimew
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/dropout/Constª
dropout_3/dropout/MulMullstm_3/strided_slice_3:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/dropout/Mul
dropout_3/dropout/ShapeShapelstm_3/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/ShapeÒ
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 dropout_3/dropout/GreaterEqual/yæ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
dropout_3/dropout/GreaterEqual
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/dropout/Cast¢
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_3/dropout/Mul_1¥
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_3/MatMul¤
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp¡
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_3/BiasAddy
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_3/SigmoidÂ
IdentityIdentitydense_3/Sigmoid:y:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_3/embedding_lookup"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2F
!lstm_3/lstm_cell_3/ReadVariableOp!lstm_3/lstm_cell_3/ReadVariableOp2J
#lstm_3/lstm_cell_3/ReadVariableOp_1#lstm_3/lstm_cell_3/ReadVariableOp_12J
#lstm_3/lstm_cell_3/ReadVariableOp_2#lstm_3/lstm_cell_3/ReadVariableOp_22J
#lstm_3/lstm_cell_3/ReadVariableOp_3#lstm_3/lstm_cell_3/ReadVariableOp_32R
'lstm_3/lstm_cell_3/split/ReadVariableOp'lstm_3/lstm_cell_3/split/ReadVariableOp2V
)lstm_3/lstm_cell_3/split_1/ReadVariableOp)lstm_3/lstm_cell_3/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
½D
Ó
A__inference_lstm_3_layer_call_and_return_conditional_losses_68032

inputs
lstm_cell_3_67950
lstm_cell_3_67952
lstm_cell_3_67954
identity¢#lstm_cell_3/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_67950lstm_cell_3_67952lstm_cell_3_67954*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_675852%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_67950lstm_cell_3_67952lstm_cell_3_67954*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_67963*
condR
while_cond_67962*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeñ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm®
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :::2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


G__inference_sequential_3_layer_call_and_return_conditional_losses_69007

inputs
embedding_3_68989
lstm_3_68993
lstm_3_68995
lstm_3_68997
dense_3_69001
dense_3_69003
identity¢dense_3/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall¢+spatial_dropout1d_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_3_68989*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_681872%
#embedding_3/StatefulPartitionedCall·
+spatial_dropout1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_682202-
+spatial_dropout1d_3/StatefulPartitionedCallÅ
lstm_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_3/StatefulPartitionedCall:output:0lstm_3_68993lstm_3_68995lstm_3_68997*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_686192 
lstm_3/StatefulPartitionedCall½
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0,^spatial_dropout1d_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_689162#
!dropout_3/StatefulPartitionedCall°
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_69001dense_3_69003*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_689452!
dense_3/StatefulPartitionedCall·
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall,^spatial_dropout1d_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2Z
+spatial_dropout1d_3/StatefulPartitionedCall+spatial_dropout1d_3/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
î÷

 __inference__wrapped_model_67331
embedding_3_input3
/sequential_3_embedding_3_embedding_lookup_67065A
=sequential_3_lstm_3_lstm_cell_3_split_readvariableop_resourceC
?sequential_3_lstm_3_lstm_cell_3_split_1_readvariableop_resource;
7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource7
3sequential_3_dense_3_matmul_readvariableop_resource8
4sequential_3_dense_3_biasadd_readvariableop_resource
identity¢+sequential_3/dense_3/BiasAdd/ReadVariableOp¢*sequential_3/dense_3/MatMul/ReadVariableOp¢)sequential_3/embedding_3/embedding_lookup¢.sequential_3/lstm_3/lstm_cell_3/ReadVariableOp¢0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1¢0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2¢0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3¢4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp¢6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp¢sequential_3/lstm_3/while
sequential_3/embedding_3/CastCastembedding_3_input*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_3/embedding_3/Castù
)sequential_3/embedding_3/embedding_lookupResourceGather/sequential_3_embedding_3_embedding_lookup_67065!sequential_3/embedding_3/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_3/embedding_3/embedding_lookup/67065*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *
dtype02+
)sequential_3/embedding_3/embedding_lookupÑ
2sequential_3/embedding_3/embedding_lookup/IdentityIdentity2sequential_3/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_3/embedding_3/embedding_lookup/67065*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 24
2sequential_3/embedding_3/embedding_lookup/Identityì
4sequential_3/embedding_3/embedding_lookup/Identity_1Identity;sequential_3/embedding_3/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 26
4sequential_3/embedding_3/embedding_lookup/Identity_1Ø
)sequential_3/spatial_dropout1d_3/IdentityIdentity=sequential_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 2+
)sequential_3/spatial_dropout1d_3/Identity
sequential_3/lstm_3/ShapeShape2sequential_3/spatial_dropout1d_3/Identity:output:0*
T0*
_output_shapes
:2
sequential_3/lstm_3/Shape
'sequential_3/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_3/strided_slice/stack 
)sequential_3/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_3/strided_slice/stack_1 
)sequential_3/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_3/strided_slice/stack_2Ú
!sequential_3/lstm_3/strided_sliceStridedSlice"sequential_3/lstm_3/Shape:output:00sequential_3/lstm_3/strided_slice/stack:output:02sequential_3/lstm_3/strided_slice/stack_1:output:02sequential_3/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_3/strided_slice
sequential_3/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22!
sequential_3/lstm_3/zeros/mul/y¼
sequential_3/lstm_3/zeros/mulMul*sequential_3/lstm_3/strided_slice:output:0(sequential_3/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_3/zeros/mul
 sequential_3/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2"
 sequential_3/lstm_3/zeros/Less/y·
sequential_3/lstm_3/zeros/LessLess!sequential_3/lstm_3/zeros/mul:z:0)sequential_3/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_3/zeros/Less
"sequential_3/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22$
"sequential_3/lstm_3/zeros/packed/1Ó
 sequential_3/lstm_3/zeros/packedPack*sequential_3/lstm_3/strided_slice:output:0+sequential_3/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_3/zeros/packed
sequential_3/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_3/zeros/ConstÅ
sequential_3/lstm_3/zerosFill)sequential_3/lstm_3/zeros/packed:output:0(sequential_3/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_3/lstm_3/zeros
!sequential_3/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22#
!sequential_3/lstm_3/zeros_1/mul/yÂ
sequential_3/lstm_3/zeros_1/mulMul*sequential_3/lstm_3/strided_slice:output:0*sequential_3/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_3/zeros_1/mul
"sequential_3/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_3/lstm_3/zeros_1/Less/y¿
 sequential_3/lstm_3/zeros_1/LessLess#sequential_3/lstm_3/zeros_1/mul:z:0+sequential_3/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_3/zeros_1/Less
$sequential_3/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22&
$sequential_3/lstm_3/zeros_1/packed/1Ù
"sequential_3/lstm_3/zeros_1/packedPack*sequential_3/lstm_3/strided_slice:output:0-sequential_3/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_3/zeros_1/packed
!sequential_3/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_3/zeros_1/ConstÍ
sequential_3/lstm_3/zeros_1Fill+sequential_3/lstm_3/zeros_1/packed:output:0*sequential_3/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_3/lstm_3/zeros_1
"sequential_3/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_3/transpose/permã
sequential_3/lstm_3/transpose	Transpose2sequential_3/spatial_dropout1d_3/Identity:output:0+sequential_3/lstm_3/transpose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
sequential_3/lstm_3/transpose
sequential_3/lstm_3/Shape_1Shape!sequential_3/lstm_3/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_3/Shape_1 
)sequential_3/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_3/strided_slice_1/stack¤
+sequential_3/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_1/stack_1¤
+sequential_3/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_1/stack_2æ
#sequential_3/lstm_3/strided_slice_1StridedSlice$sequential_3/lstm_3/Shape_1:output:02sequential_3/lstm_3/strided_slice_1/stack:output:04sequential_3/lstm_3/strided_slice_1/stack_1:output:04sequential_3/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_1­
/sequential_3/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_3/lstm_3/TensorArrayV2/element_shape
!sequential_3/lstm_3/TensorArrayV2TensorListReserve8sequential_3/lstm_3/TensorArrayV2/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_3/TensorArrayV2ç
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2K
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_3/transpose:y:0Rsequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor 
)sequential_3/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_3/strided_slice_2/stack¤
+sequential_3/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_2/stack_1¤
+sequential_3/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_2/stack_2ô
#sequential_3/lstm_3/strided_slice_2StridedSlice!sequential_3/lstm_3/transpose:y:02sequential_3/lstm_3/strided_slice_2/stack:output:04sequential_3/lstm_3/strided_slice_2/stack_1:output:04sequential_3/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_2¾
/sequential_3/lstm_3/lstm_cell_3/ones_like/ShapeShape,sequential_3/lstm_3/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_3/lstm_3/lstm_cell_3/ones_like/Shape§
/sequential_3/lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_3/lstm_3/lstm_cell_3/ones_like/Const
)sequential_3/lstm_3/lstm_cell_3/ones_likeFill8sequential_3/lstm_3/lstm_cell_3/ones_like/Shape:output:08sequential_3/lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_3/lstm_3/lstm_cell_3/ones_like¸
1sequential_3/lstm_3/lstm_cell_3/ones_like_1/ShapeShape"sequential_3/lstm_3/zeros:output:0*
T0*
_output_shapes
:23
1sequential_3/lstm_3/lstm_cell_3/ones_like_1/Shape«
1sequential_3/lstm_3/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_3/lstm_3/lstm_cell_3/ones_like_1/Const
+sequential_3/lstm_3/lstm_cell_3/ones_like_1Fill:sequential_3/lstm_3/lstm_cell_3/ones_like_1/Shape:output:0:sequential_3/lstm_3/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22-
+sequential_3/lstm_3/lstm_cell_3/ones_like_1å
#sequential_3/lstm_3/lstm_cell_3/mulMul,sequential_3/lstm_3/strided_slice_2:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#sequential_3/lstm_3/lstm_cell_3/mulé
%sequential_3/lstm_3/lstm_cell_3/mul_1Mul,sequential_3/lstm_3/strided_slice_2:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_3/lstm_3/lstm_cell_3/mul_1é
%sequential_3/lstm_3/lstm_cell_3/mul_2Mul,sequential_3/lstm_3/strided_slice_2:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_3/lstm_3/lstm_cell_3/mul_2é
%sequential_3/lstm_3/lstm_cell_3/mul_3Mul,sequential_3/lstm_3/strided_slice_2:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_3/lstm_3/lstm_cell_3/mul_3
%sequential_3/lstm_3/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_3/lstm_3/lstm_cell_3/Const¤
/sequential_3/lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_3/lstm_3/lstm_cell_3/split/split_dimë
4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp=sequential_3_lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype026
4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp§
%sequential_3/lstm_3/lstm_cell_3/splitSplit8sequential_3/lstm_3/lstm_cell_3/split/split_dim:output:0<sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2'
%sequential_3/lstm_3/lstm_cell_3/splitå
&sequential_3/lstm_3/lstm_cell_3/MatMulMatMul'sequential_3/lstm_3/lstm_cell_3/mul:z:0.sequential_3/lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_3/lstm_3/lstm_cell_3/MatMulë
(sequential_3/lstm_3/lstm_cell_3/MatMul_1MatMul)sequential_3/lstm_3/lstm_cell_3/mul_1:z:0.sequential_3/lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_1ë
(sequential_3/lstm_3/lstm_cell_3/MatMul_2MatMul)sequential_3/lstm_3/lstm_cell_3/mul_2:z:0.sequential_3/lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_2ë
(sequential_3/lstm_3/lstm_cell_3/MatMul_3MatMul)sequential_3/lstm_3/lstm_cell_3/mul_3:z:0.sequential_3/lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_3
'sequential_3/lstm_3/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_3/lstm_3/lstm_cell_3/Const_1¨
1sequential_3/lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_3/lstm_3/lstm_cell_3/split_1/split_dimí
6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp?sequential_3_lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype028
6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp
'sequential_3/lstm_3/lstm_cell_3/split_1Split:sequential_3/lstm_3/lstm_cell_3/split_1/split_dim:output:0>sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2)
'sequential_3/lstm_3/lstm_cell_3/split_1ó
'sequential_3/lstm_3/lstm_cell_3/BiasAddBiasAdd0sequential_3/lstm_3/lstm_cell_3/MatMul:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_3/lstm_3/lstm_cell_3/BiasAddù
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_1BiasAdd2sequential_3/lstm_3/lstm_cell_3/MatMul_1:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_1ù
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_2BiasAdd2sequential_3/lstm_3/lstm_cell_3/MatMul_2:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_2ù
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_3BiasAdd2sequential_3/lstm_3/lstm_cell_3/MatMul_3:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_3á
%sequential_3/lstm_3/lstm_cell_3/mul_4Mul"sequential_3/lstm_3/zeros:output:04sequential_3/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/mul_4á
%sequential_3/lstm_3/lstm_cell_3/mul_5Mul"sequential_3/lstm_3/zeros:output:04sequential_3/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/mul_5á
%sequential_3/lstm_3/lstm_cell_3/mul_6Mul"sequential_3/lstm_3/zeros:output:04sequential_3/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/mul_6á
%sequential_3/lstm_3/lstm_cell_3/mul_7Mul"sequential_3/lstm_3/zeros:output:04sequential_3/lstm_3/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/mul_7Ù
.sequential_3/lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype020
.sequential_3/lstm_3/lstm_cell_3/ReadVariableOp»
3sequential_3/lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_3/lstm_3/lstm_cell_3/strided_slice/stack¿
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   27
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_1¿
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_2¼
-sequential_3/lstm_3/lstm_cell_3/strided_sliceStridedSlice6sequential_3/lstm_3/lstm_cell_3/ReadVariableOp:value:0<sequential_3/lstm_3/lstm_cell_3/strided_slice/stack:output:0>sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_1:output:0>sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2/
-sequential_3/lstm_3/lstm_cell_3/strided_sliceó
(sequential_3/lstm_3/lstm_cell_3/MatMul_4MatMul)sequential_3/lstm_3/lstm_cell_3/mul_4:z:06sequential_3/lstm_3/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_4ë
#sequential_3/lstm_3/lstm_cell_3/addAddV20sequential_3/lstm_3/lstm_cell_3/BiasAdd:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22%
#sequential_3/lstm_3/lstm_cell_3/add¸
'sequential_3/lstm_3/lstm_cell_3/SigmoidSigmoid'sequential_3/lstm_3/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22)
'sequential_3/lstm_3/lstm_cell_3/SigmoidÝ
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype022
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1¿
5sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   27
5sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stackÃ
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_1Ã
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_2È
/sequential_3/lstm_3/lstm_cell_3/strided_slice_1StridedSlice8sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1:value:0>sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask21
/sequential_3/lstm_3/lstm_cell_3/strided_slice_1õ
(sequential_3/lstm_3/lstm_cell_3/MatMul_5MatMul)sequential_3/lstm_3/lstm_cell_3/mul_5:z:08sequential_3/lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_5ñ
%sequential_3/lstm_3/lstm_cell_3/add_1AddV22sequential_3/lstm_3/lstm_cell_3/BiasAdd_1:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/add_1¾
)sequential_3/lstm_3/lstm_cell_3/Sigmoid_1Sigmoid)sequential_3/lstm_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_3/lstm_3/lstm_cell_3/Sigmoid_1Ü
%sequential_3/lstm_3/lstm_cell_3/mul_8Mul-sequential_3/lstm_3/lstm_cell_3/Sigmoid_1:y:0$sequential_3/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/mul_8Ý
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype022
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2¿
5sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stackÃ
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_1Ã
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_2È
/sequential_3/lstm_3/lstm_cell_3/strided_slice_2StridedSlice8sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2:value:0>sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask21
/sequential_3/lstm_3/lstm_cell_3/strided_slice_2õ
(sequential_3/lstm_3/lstm_cell_3/MatMul_6MatMul)sequential_3/lstm_3/lstm_cell_3/mul_6:z:08sequential_3/lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_6ñ
%sequential_3/lstm_3/lstm_cell_3/add_2AddV22sequential_3/lstm_3/lstm_cell_3/BiasAdd_2:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/add_2±
$sequential_3/lstm_3/lstm_cell_3/TanhTanh)sequential_3/lstm_3/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22&
$sequential_3/lstm_3/lstm_cell_3/TanhÞ
%sequential_3/lstm_3/lstm_cell_3/mul_9Mul+sequential_3/lstm_3/lstm_cell_3/Sigmoid:y:0(sequential_3/lstm_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/mul_9ß
%sequential_3/lstm_3/lstm_cell_3/add_3AddV2)sequential_3/lstm_3/lstm_cell_3/mul_8:z:0)sequential_3/lstm_3/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/add_3Ý
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype022
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3¿
5sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stackÃ
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_1Ã
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_2È
/sequential_3/lstm_3/lstm_cell_3/strided_slice_3StridedSlice8sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3:value:0>sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask21
/sequential_3/lstm_3/lstm_cell_3/strided_slice_3õ
(sequential_3/lstm_3/lstm_cell_3/MatMul_7MatMul)sequential_3/lstm_3/lstm_cell_3/mul_7:z:08sequential_3/lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
(sequential_3/lstm_3/lstm_cell_3/MatMul_7ñ
%sequential_3/lstm_3/lstm_cell_3/add_4AddV22sequential_3/lstm_3/lstm_cell_3/BiasAdd_3:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22'
%sequential_3/lstm_3/lstm_cell_3/add_4¾
)sequential_3/lstm_3/lstm_cell_3/Sigmoid_2Sigmoid)sequential_3/lstm_3/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22+
)sequential_3/lstm_3/lstm_cell_3/Sigmoid_2µ
&sequential_3/lstm_3/lstm_cell_3/Tanh_1Tanh)sequential_3/lstm_3/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_3/lstm_3/lstm_cell_3/Tanh_1ä
&sequential_3/lstm_3/lstm_cell_3/mul_10Mul-sequential_3/lstm_3/lstm_cell_3/Sigmoid_2:y:0*sequential_3/lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22(
&sequential_3/lstm_3/lstm_cell_3/mul_10·
1sequential_3/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   23
1sequential_3/lstm_3/TensorArrayV2_1/element_shape
#sequential_3/lstm_3/TensorArrayV2_1TensorListReserve:sequential_3/lstm_3/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_3/TensorArrayV2_1v
sequential_3/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_3/time§
,sequential_3/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,sequential_3/lstm_3/while/maximum_iterations
&sequential_3/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_3/while/loop_counter
sequential_3/lstm_3/whileWhile/sequential_3/lstm_3/while/loop_counter:output:05sequential_3/lstm_3/while/maximum_iterations:output:0!sequential_3/lstm_3/time:output:0,sequential_3/lstm_3/TensorArrayV2_1:handle:0"sequential_3/lstm_3/zeros:output:0$sequential_3/lstm_3/zeros_1:output:0,sequential_3/lstm_3/strided_slice_1:output:0Ksequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_3_lstm_3_lstm_cell_3_split_readvariableop_resource?sequential_3_lstm_3_lstm_cell_3_split_1_readvariableop_resource7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$sequential_3_lstm_3_while_body_67187*0
cond(R&
$sequential_3_lstm_3_while_cond_67186*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
sequential_3/lstm_3/whileÝ
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2F
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape¹
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_3/while:output:3Msequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype028
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack©
)sequential_3/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)sequential_3/lstm_3/strided_slice_3/stack¤
+sequential_3/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_3/strided_slice_3/stack_1¤
+sequential_3/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_3/stack_2
#sequential_3/lstm_3/strided_slice_3StridedSlice?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_3/strided_slice_3/stack:output:04sequential_3/lstm_3/strided_slice_3/stack_1:output:04sequential_3/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_3¡
$sequential_3/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_3/transpose_1/permö
sequential_3/lstm_3/transpose_1	Transpose?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22!
sequential_3/lstm_3/transpose_1
sequential_3/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_3/runtime®
sequential_3/dropout_3/IdentityIdentity,sequential_3/lstm_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22!
sequential_3/dropout_3/IdentityÌ
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02,
*sequential_3/dense_3/MatMul/ReadVariableOpÔ
sequential_3/dense_3/MatMulMatMul(sequential_3/dropout_3/Identity:output:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_3/MatMulË
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_3/dense_3/BiasAdd/ReadVariableOpÕ
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_3/BiasAdd 
sequential_3/dense_3/SigmoidSigmoid%sequential_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_3/dense_3/SigmoidÑ
IdentityIdentity sequential_3/dense_3/Sigmoid:y:0,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp*^sequential_3/embedding_3/embedding_lookup/^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp1^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_11^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_21^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_35^sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp7^sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp^sequential_3/lstm_3/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp2V
)sequential_3/embedding_3/embedding_lookup)sequential_3/embedding_3/embedding_lookup2`
.sequential_3/lstm_3/lstm_cell_3/ReadVariableOp.sequential_3/lstm_3/lstm_cell_3/ReadVariableOp2d
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_10sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_12d
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_20sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_22d
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_30sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_32l
4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp2p
6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp26
sequential_3/lstm_3/whilesequential_3/lstm_3/while:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+
_user_specified_nameembedding_3_input
å
½
,__inference_sequential_3_layer_call_fn_69796

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_690072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_71236

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
å
Å
while_body_68738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resource¢ while/lstm_cell_3/ReadVariableOp¢"while/lstm_cell_3/ReadVariableOp_1¢"while/lstm_cell_3/ReadVariableOp_2¢"while/lstm_cell_3/ReadVariableOp_3¢&while/lstm_cell_3/split/ReadVariableOp¢(while/lstm_cell_3/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_3/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstÌ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/ones_like
#while/lstm_cell_3/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_3/ones_like_1/Shape
#while/lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_3/ones_like_1/ConstÔ
while/lstm_cell_3/ones_like_1Fill,while/lstm_cell_3/ones_like_1/Shape:output:0,while/lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/ones_like_1¿
while/lstm_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mulÃ
while/lstm_cell_3/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_1Ã
while/lstm_cell_3/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_2Ã
while/lstm_cell_3/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_3/mul_3t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimÃ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	 È*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpï
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_3/split­
while/lstm_cell_3/MatMulMatMulwhile/lstm_cell_3/mul:z:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul³
while/lstm_cell_3/MatMul_1MatMulwhile/lstm_cell_3/mul_1:z:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_1³
while/lstm_cell_3/MatMul_2MatMulwhile/lstm_cell_3/mul_2:z:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_2³
while/lstm_cell_3/MatMul_3MatMulwhile/lstm_cell_3/mul_3:z:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimÅ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:È*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpç
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_3/split_1»
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAddÁ
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_1Á
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_2Á
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/BiasAdd_3¨
while/lstm_cell_3/mul_4Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_4¨
while/lstm_cell_3/mul_5Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_5¨
while/lstm_cell_3/mul_6Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_6¨
while/lstm_cell_3/mul_7Mulwhile_placeholder_2&while/lstm_cell_3/ones_like_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_7±
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stack£
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice/stack_1£
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2è
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_slice»
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul_4:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_4³
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoidµ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1£
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_3/strided_slice_1/stack§
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_3/strided_slice_1/stack_1§
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2ô
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1½
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_5:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_5¹
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_1
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_1¡
while/lstm_cell_3/mul_8Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_8µ
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2£
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_3/strided_slice_2/stack§
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_2/stack_1§
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2ô
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2½
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_6:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_6¹
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_2
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh¦
while/lstm_cell_3/mul_9Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_9§
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_8:z:0while/lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_3µ
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	2È*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3£
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_3/stack§
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1§
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2ô
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3½
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_7:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/MatMul_7¹
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/add_4
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Sigmoid_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/Tanh_1¬
while/lstm_cell_3/mul_10Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/lstm_cell_3/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3æ
while/Identity_4Identitywhile/lstm_cell_3/mul_10:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_4å
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:

_output_shapes
: :

_output_shapes
: 
¢

G__inference_sequential_3_layer_call_and_return_conditional_losses_68962
embedding_3_input
embedding_3_68196
lstm_3_68897
lstm_3_68899
lstm_3_68901
dense_3_68956
dense_3_68958
identity¢dense_3/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall¢+spatial_dropout1d_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_68196*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_681872%
#embedding_3/StatefulPartitionedCall·
+spatial_dropout1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_682202-
+spatial_dropout1d_3/StatefulPartitionedCallÅ
lstm_3/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_3/StatefulPartitionedCall:output:0lstm_3_68897lstm_3_68899lstm_3_68901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_686192 
lstm_3/StatefulPartitionedCall½
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0,^spatial_dropout1d_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_689162#
!dropout_3/StatefulPartitionedCall°
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_68956dense_3_68958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_689452!
dense_3/StatefulPartitionedCall·
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall,^spatial_dropout1d_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2Z
+spatial_dropout1d_3/StatefulPartitionedCall+spatial_dropout1d_3/StatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+
_user_specified_nameembedding_3_input
«÷
³
A__inference_lstm_3_layer_call_and_return_conditional_losses_70947

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identity¢lstm_cell_3/ReadVariableOp¢lstm_cell_3/ReadVariableOp_1¢lstm_cell_3/ReadVariableOp_2¢lstm_cell_3/ReadVariableOp_3¢ lstm_cell_3/split/ReadVariableOp¢"lstm_cell_3/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_3/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/Const´
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout/Const¯
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shapeö
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2)22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_cell_3/dropout/GreaterEqual/yî
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_cell_3/dropout/GreaterEqual£
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Castª
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_1/Constµ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeý
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¥ÅÜ24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_1/GreaterEqual/yö
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_1/GreaterEqual©
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Cast²
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_2/Constµ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeý
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2çá24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_2/GreaterEqual/yö
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_2/GreaterEqual©
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Cast²
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_3/Constµ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeý
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¾òÏ24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_3/GreaterEqual/yö
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_3/dropout_3/GreaterEqual©
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Cast²
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/dropout_3/Mul_1|
lstm_cell_3/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like_1/Shape
lstm_cell_3/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like_1/Const¼
lstm_cell_3/ones_like_1Fill&lstm_cell_3/ones_like_1/Shape:output:0&lstm_cell_3/ones_like_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/ones_like_1
lstm_cell_3/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_4/Const·
lstm_cell_3/dropout_4/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_4/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Mul
lstm_cell_3/dropout_4/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_4/Shapeý
2lstm_cell_3/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_4/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2ÀÃ24
2lstm_cell_3/dropout_4/random_uniform/RandomUniform
$lstm_cell_3/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_4/GreaterEqual/yö
"lstm_cell_3/dropout_4/GreaterEqualGreaterEqual;lstm_cell_3/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_4/GreaterEqual©
lstm_cell_3/dropout_4/CastCast&lstm_cell_3/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Cast²
lstm_cell_3/dropout_4/Mul_1Mullstm_cell_3/dropout_4/Mul:z:0lstm_cell_3/dropout_4/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_4/Mul_1
lstm_cell_3/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_5/Const·
lstm_cell_3/dropout_5/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_5/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Mul
lstm_cell_3/dropout_5/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_5/Shapeý
2lstm_cell_3/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_5/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ìíõ24
2lstm_cell_3/dropout_5/random_uniform/RandomUniform
$lstm_cell_3/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_5/GreaterEqual/yö
"lstm_cell_3/dropout_5/GreaterEqualGreaterEqual;lstm_cell_3/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_5/GreaterEqual©
lstm_cell_3/dropout_5/CastCast&lstm_cell_3/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Cast²
lstm_cell_3/dropout_5/Mul_1Mullstm_cell_3/dropout_5/Mul:z:0lstm_cell_3/dropout_5/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_5/Mul_1
lstm_cell_3/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_6/Const·
lstm_cell_3/dropout_6/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_6/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Mul
lstm_cell_3/dropout_6/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_6/Shapeý
2lstm_cell_3/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_6/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2Ó24
2lstm_cell_3/dropout_6/random_uniform/RandomUniform
$lstm_cell_3/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_6/GreaterEqual/yö
"lstm_cell_3/dropout_6/GreaterEqualGreaterEqual;lstm_cell_3/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_6/GreaterEqual©
lstm_cell_3/dropout_6/CastCast&lstm_cell_3/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Cast²
lstm_cell_3/dropout_6/Mul_1Mullstm_cell_3/dropout_6/Mul:z:0lstm_cell_3/dropout_6/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_6/Mul_1
lstm_cell_3/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_3/dropout_7/Const·
lstm_cell_3/dropout_7/MulMul lstm_cell_3/ones_like_1:output:0$lstm_cell_3/dropout_7/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Mul
lstm_cell_3/dropout_7/ShapeShape lstm_cell_3/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_7/Shapeý
2lstm_cell_3/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_7/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
seed±ÿå)*
seed2¾í24
2lstm_cell_3/dropout_7/random_uniform/RandomUniform
$lstm_cell_3/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_3/dropout_7/GreaterEqual/yö
"lstm_cell_3/dropout_7/GreaterEqualGreaterEqual;lstm_cell_3/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22$
"lstm_cell_3/dropout_7/GreaterEqual©
lstm_cell_3/dropout_7/CastCast&lstm_cell_3/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Cast²
lstm_cell_3/dropout_7/Mul_1Mullstm_cell_3/dropout_7/Mul:z:0lstm_cell_3/dropout_7/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/dropout_7/Mul_1
lstm_cell_3/mulMulstrided_slice_2:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulstrided_slice_2:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulstrided_slice_2:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulstrided_slice_2:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_3/mul_3h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dim¯
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	 È*
dtype02"
 lstm_cell_3/split/ReadVariableOp×
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMullstm_cell_3/mul:z:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMullstm_cell_3/mul_1:z:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMullstm_cell_3/mul_2:z:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMullstm_cell_3/mul_3:z:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dim±
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:È*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpÏ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_3/split_1£
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd©
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_1©
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_2©
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/BiasAdd_3
lstm_cell_3/mul_4Mulzeros:output:0lstm_cell_3/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_4
lstm_cell_3/mul_5Mulzeros:output:0lstm_cell_3/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_5
lstm_cell_3/mul_6Mulzeros:output:0lstm_cell_3/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_6
lstm_cell_3/mul_7Mulzeros:output:0lstm_cell_3/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_7
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ä
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice£
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul_4:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add|
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid¡
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2Ð
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1¥
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_5:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_5¡
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_1
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_1
lstm_cell_3/mul_8Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_8¡
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2Ð
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2¥
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_6:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_6¡
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_2u
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh
lstm_cell_3/mul_9Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_9
lstm_cell_3/add_3AddV2lstm_cell_3/mul_8:z:0lstm_cell_3/mul_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_3¡
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	2È*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2Ð
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3¥
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_7:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/MatMul_7¡
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/add_4
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Sigmoid_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/Tanh_1
lstm_cell_3/mul_10Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
lstm_cell_3/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterß
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_70747*
condR
while_cond_70746*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ2: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:Èÿÿÿÿÿÿÿÿÿ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime¶
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÈ :::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ 
 
_user_specified_nameinputs
ì
Í
G__inference_sequential_3_layer_call_and_return_conditional_losses_68983
embedding_3_input
embedding_3_68965
lstm_3_68969
lstm_3_68971
lstm_3_68973
dense_3_68977
dense_3_68979
identity¢dense_3/StatefulPartitionedCall¢#embedding_3/StatefulPartitionedCall¢lstm_3/StatefulPartitionedCall
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallembedding_3_inputembedding_3_68965*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_681872%
#embedding_3/StatefulPartitionedCall
#spatial_dropout1d_3/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_682252%
#spatial_dropout1d_3/PartitionedCall½
lstm_3/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_3/PartitionedCall:output:0lstm_3_68969lstm_3_68971lstm_3_68973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_3_layer_call_and_return_conditional_losses_688742 
lstm_3/StatefulPartitionedCall÷
dropout_3/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_689212
dropout_3/PartitionedCall¨
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_68977dense_3_68979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_689452!
dense_3/StatefulPartitionedCallå
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÈ::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
+
_user_specified_nameembedding_3_input
Ç
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_71241

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ït
ð
!__inference__traced_restore_71732
file_prefix+
'assignvariableop_embedding_3_embeddings%
!assignvariableop_1_dense_3_kernel#
assignvariableop_2_dense_3_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate0
,assignvariableop_8_lstm_3_lstm_cell_3_kernel:
6assignvariableop_9_lstm_3_lstm_cell_3_recurrent_kernel/
+assignvariableop_10_lstm_3_lstm_cell_3_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_3_embeddings_m-
)assignvariableop_16_adam_dense_3_kernel_m+
'assignvariableop_17_adam_dense_3_bias_m8
4assignvariableop_18_adam_lstm_3_lstm_cell_3_kernel_mB
>assignvariableop_19_adam_lstm_3_lstm_cell_3_recurrent_kernel_m6
2assignvariableop_20_adam_lstm_3_lstm_cell_3_bias_m5
1assignvariableop_21_adam_embedding_3_embeddings_v-
)assignvariableop_22_adam_dense_3_kernel_v+
'assignvariableop_23_adam_dense_3_bias_v8
4assignvariableop_24_adam_lstm_3_lstm_cell_3_kernel_vB
>assignvariableop_25_adam_lstm_3_lstm_cell_3_recurrent_kernel_v6
2assignvariableop_26_adam_lstm_3_lstm_cell_3_bias_v
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ô
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueöBóB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_3_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_3_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ª
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8±
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_3_lstm_cell_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9»
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_3_lstm_cell_3_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10³
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_3_lstm_cell_3_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¹
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_3_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16±
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_3_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_3_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_3_lstm_cell_3_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Æ
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_3_lstm_cell_3_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20º
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_3_lstm_cell_3_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¹
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_3_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_3_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¯
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_3_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¼
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_3_lstm_cell_3_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Æ
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_3_lstm_cell_3_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26º
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_3_lstm_cell_3_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*
_input_shapesp
n: :::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
P
embedding_3_input;
#serving_default_embedding_3_input:0ÿÿÿÿÿÿÿÿÿÈ;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:éé
-
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
l__call__
*m&call_and_return_all_conditional_losses
n_default_save_signature"°*
_tf_keras_sequential*{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 10042, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_3", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_3_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 10042, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_3", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
­

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layerô{"class_name": "Embedding", "name": "embedding_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 10042, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}

	variables
regularization_losses
trainable_variables
	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layerê{"class_name": "SpatialDropout1D", "name": "spatial_dropout1d_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "spatial_dropout1d_3", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¾
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"

_tf_keras_rnn_layer÷	{"class_name": "LSTM", "name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_3", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 32]}}
å
	variables
regularization_losses
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"Ö
_tf_keras_layer¼{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
ò

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
w__call__
*x&call_and_return_all_conditional_losses"Í
_tf_keras_layer³{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
¿
%iter

&beta_1

'beta_2
	(decay
)learning_ratem`ma mb*mc+md,mevfvg vh*vi+vj,vk"
	optimizer
J
0
*1
+2
,3
4
 5"
trackable_list_wrapper
J
0
*1
+2
,3
4
 5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
trainable_variables

-layers
	variables
.layer_regularization_losses
/layer_metrics
0non_trainable_variables
	regularization_losses
1metrics
l__call__
n_default_save_signature
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
):'	ºN 2embedding_3/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­

2layers
3layer_regularization_losses
	variables
4layer_metrics
regularization_losses
5non_trainable_variables
trainable_variables
6metrics
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

7layers
8layer_regularization_losses
	variables
9layer_metrics
regularization_losses
:non_trainable_variables
trainable_variables
;metrics
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
¨

*kernel
+recurrent_kernel
,bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
z__call__
*{&call_and_return_all_conditional_losses"í
_tf_keras_layerÓ{"class_name": "LSTMCell", "name": "lstm_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}}
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹
trainable_variables

@layers
	variables
Alayer_regularization_losses
Bnon_trainable_variables
Clayer_metrics

Dstates
regularization_losses
Emetrics
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­

Flayers
Glayer_regularization_losses
	variables
Hlayer_metrics
regularization_losses
Inon_trainable_variables
trainable_variables
Jmetrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 :22dense_3/kernel
:2dense_3/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
­

Klayers
Llayer_regularization_losses
!	variables
Mlayer_metrics
"regularization_losses
Nnon_trainable_variables
#trainable_variables
Ometrics
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	 È2lstm_3/lstm_cell_3/kernel
6:4	2È2#lstm_3/lstm_cell_3/recurrent_kernel
&:$È2lstm_3/lstm_cell_3/bias
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
­

Rlayers
Slayer_regularization_losses
<	variables
Tlayer_metrics
=regularization_losses
Unon_trainable_variables
>trainable_variables
Vmetrics
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
»
	Wtotal
	Xcount
Y	variables
Z	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ú
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"³
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
W0
X1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
.:,	ºN 2Adam/embedding_3/embeddings/m
%:#22Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
1:/	 È2 Adam/lstm_3/lstm_cell_3/kernel/m
;:9	2È2*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m
+:)È2Adam/lstm_3/lstm_cell_3/bias/m
.:,	ºN 2Adam/embedding_3/embeddings/v
%:#22Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
1:/	 È2 Adam/lstm_3/lstm_cell_3/kernel/v
;:9	2È2*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v
+:)È2Adam/lstm_3/lstm_cell_3/bias/v
þ2û
,__inference_sequential_3_layer_call_fn_69060
,__inference_sequential_3_layer_call_fn_69796
,__inference_sequential_3_layer_call_fn_69022
,__inference_sequential_3_layer_call_fn_69813À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_3_layer_call_and_return_conditional_losses_68983
G__inference_sequential_3_layer_call_and_return_conditional_losses_69509
G__inference_sequential_3_layer_call_and_return_conditional_losses_68962
G__inference_sequential_3_layer_call_and_return_conditional_losses_69779À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
é2æ
 __inference__wrapped_model_67331Á
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *1¢.
,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ
Õ2Ò
+__inference_embedding_3_layer_call_fn_69830¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_embedding_3_layer_call_and_return_conditional_losses_69823¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
3__inference_spatial_dropout1d_3_layer_call_fn_69899
3__inference_spatial_dropout1d_3_layer_call_fn_69862
3__inference_spatial_dropout1d_3_layer_call_fn_69867
3__inference_spatial_dropout1d_3_layer_call_fn_69904´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ú2÷
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69889
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69857
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69852
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69894´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
û2ø
&__inference_lstm_3_layer_call_fn_70564
&__inference_lstm_3_layer_call_fn_70553
&__inference_lstm_3_layer_call_fn_71213
&__inference_lstm_3_layer_call_fn_71224Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ç2ä
A__inference_lstm_3_layer_call_and_return_conditional_losses_71202
A__inference_lstm_3_layer_call_and_return_conditional_losses_70947
A__inference_lstm_3_layer_call_and_return_conditional_losses_70542
A__inference_lstm_3_layer_call_and_return_conditional_losses_70287Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
)__inference_dropout_3_layer_call_fn_71246
)__inference_dropout_3_layer_call_fn_71251´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_3_layer_call_and_return_conditional_losses_71241
D__inference_dropout_3_layer_call_and_return_conditional_losses_71236´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_dense_3_layer_call_fn_71271¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_71262¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_69087embedding_3_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_lstm_cell_3_layer_call_fn_71537
+__inference_lstm_cell_3_layer_call_fn_71520¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_71503
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_71419¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 __inference__wrapped_model_67331x*,+ ;¢8
1¢.
,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ¢
B__inference_dense_3_layer_call_and_return_conditional_losses_71262\ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_dense_3_layer_call_fn_71271O /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dropout_3_layer_call_and_return_conditional_losses_71236\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 ¤
D__inference_dropout_3_layer_call_and_return_conditional_losses_71241\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 |
)__inference_dropout_3_layer_call_fn_71246O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p
ª "ÿÿÿÿÿÿÿÿÿ2|
)__inference_dropout_3_layer_call_fn_71251O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ2
p 
ª "ÿÿÿÿÿÿÿÿÿ2«
F__inference_embedding_3_layer_call_and_return_conditional_losses_69823a0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿÈ 
 
+__inference_embedding_3_layer_call_fn_69830T0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿÈ Â
A__inference_lstm_3_layer_call_and_return_conditional_losses_70287}*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 Â
A__inference_lstm_3_layer_call_and_return_conditional_losses_70542}*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 ³
A__inference_lstm_3_layer_call_and_return_conditional_losses_70947n*,+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿÈ 

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 ³
A__inference_lstm_3_layer_call_and_return_conditional_losses_71202n*,+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿÈ 

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 
&__inference_lstm_3_layer_call_fn_70553p*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2
&__inference_lstm_3_layer_call_fn_70564p*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
&__inference_lstm_3_layer_call_fn_71213a*,+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿÈ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2
&__inference_lstm_3_layer_call_fn_71224a*,+@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿÈ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2È
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_71419ý*,+¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 È
F__inference_lstm_cell_3_layer_call_and_return_conditional_losses_71503ý*,+¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ2
EB

0/1/0ÿÿÿÿÿÿÿÿÿ2

0/1/1ÿÿÿÿÿÿÿÿÿ2
 
+__inference_lstm_cell_3_layer_call_fn_71520í*,+¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2
+__inference_lstm_cell_3_layer_call_fn_71537í*,+¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ2
"
states/1ÿÿÿÿÿÿÿÿÿ2
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ2
A>

1/0ÿÿÿÿÿÿÿÿÿ2

1/1ÿÿÿÿÿÿÿÿÿ2¿
G__inference_sequential_3_layer_call_and_return_conditional_losses_68962t*,+ C¢@
9¢6
,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
G__inference_sequential_3_layer_call_and_return_conditional_losses_68983t*,+ C¢@
9¢6
,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
G__inference_sequential_3_layer_call_and_return_conditional_losses_69509i*,+ 8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿÈ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
G__inference_sequential_3_layer_call_and_return_conditional_losses_69779i*,+ 8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿÈ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_sequential_3_layer_call_fn_69022g*,+ C¢@
9¢6
,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_3_layer_call_fn_69060g*,+ C¢@
9¢6
,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_3_layer_call_fn_69796\*,+ 8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿÈ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_3_layer_call_fn_69813\*,+ 8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿÈ
p 

 
ª "ÿÿÿÿÿÿÿÿÿµ
#__inference_signature_wrapper_69087*,+ P¢M
¢ 
FªC
A
embedding_3_input,)
embedding_3_inputÿÿÿÿÿÿÿÿÿÈ"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ¸
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69852f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿÈ 
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿÈ 
 ¸
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69857f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿÈ 
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿÈ 
 Û
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69889I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Û
N__inference_spatial_dropout1d_3_layer_call_and_return_conditional_losses_69894I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
3__inference_spatial_dropout1d_3_layer_call_fn_69862Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿÈ 
p
ª "ÿÿÿÿÿÿÿÿÿÈ 
3__inference_spatial_dropout1d_3_layer_call_fn_69867Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿÈ 
p 
ª "ÿÿÿÿÿÿÿÿÿÈ ²
3__inference_spatial_dropout1d_3_layer_call_fn_69899{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
3__inference_spatial_dropout1d_3_layer_call_fn_69904{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ