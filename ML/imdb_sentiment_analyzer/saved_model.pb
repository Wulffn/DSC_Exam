??+
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.4.02unknown8??)
?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings* 
_output_shapes
:
?? *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
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
?
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?**
shared_namelstm_1/lstm_cell_1/kernel
?
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	 ?*
dtype0
?
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
?
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_1/lstm_cell_1/bias
?
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:?*
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
?
Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *.
shared_nameAdam/embedding_1/embeddings/m
?
1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m* 
_output_shapes
:
?? *
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m
?
4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	 ?*
dtype0
?
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
?
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m
?
2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *.
shared_nameAdam/embedding_1/embeddings/v
?
1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v* 
_output_shapes
:
?? *
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
?
 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v
?
4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	 ?*
dtype0
?
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
?
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v
?
2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
b

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
?
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
 
*
0
*1
+2
,3
4
 5
?
	variables
regularization_losses
	trainable_variables
-non_trainable_variables
.metrics
/layer_regularization_losses
0layer_metrics

1layers
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
?
regularization_losses
	variables
trainable_variables
2non_trainable_variables
3metrics
4layer_regularization_losses
5layer_metrics

6layers
 
 
 
?
regularization_losses
	variables
trainable_variables
7non_trainable_variables
8metrics
9layer_regularization_losses
:layer_metrics

;layers
~

*kernel
+recurrent_kernel
,bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
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
?

@states
	variables
regularization_losses
trainable_variables
Anon_trainable_variables
Bmetrics
Clayer_regularization_losses
Dlayer_metrics

Elayers
 
 
 
?
regularization_losses
	variables
trainable_variables
Fnon_trainable_variables
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics

Jlayers
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
?
!regularization_losses
"	variables
#trainable_variables
Knon_trainable_variables
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics

Olayers
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
US
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1
 
 
#
0
1
2
3
4
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

*0
+1
,2

*0
+1
,2
?
<regularization_losses
=	variables
>trainable_variables
Rnon_trainable_variables
Smetrics
Tlayer_regularization_losses
Ulayer_metrics

Vlayers
 
 
 
 
 
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
??
VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_embedding_1_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_1_inputembedding_1/embeddingslstm_1/lstm_cell_1/kernellstm_1/lstm_cell_1/bias#lstm_1/lstm_cell_1/recurrent_kerneldense_1/kerneldense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_353465
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst*(
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
GPU 2J 8? *(
f#R!
__inference__traced_save_356019
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastotalcounttotal_1count_1Adam/embedding_1/embeddings/mAdam/dense_1/kernel/mAdam/dense_1/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/mAdam/embedding_1/embeddings/vAdam/dense_1/kernel/vAdam/dense_1/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v*'
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_356110??(
?t
?
"__inference__traced_restore_356110
file_prefix+
'assignvariableop_embedding_1_embeddings%
!assignvariableop_1_dense_1_kernel#
assignvariableop_2_dense_1_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate0
,assignvariableop_8_lstm_1_lstm_cell_1_kernel:
6assignvariableop_9_lstm_1_lstm_cell_1_recurrent_kernel/
+assignvariableop_10_lstm_1_lstm_cell_1_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_1_embeddings_m-
)assignvariableop_16_adam_dense_1_kernel_m+
'assignvariableop_17_adam_dense_1_bias_m8
4assignvariableop_18_adam_lstm_1_lstm_cell_1_kernel_mB
>assignvariableop_19_adam_lstm_1_lstm_cell_1_recurrent_kernel_m6
2assignvariableop_20_adam_lstm_1_lstm_cell_1_bias_m5
1assignvariableop_21_adam_embedding_1_embeddings_v-
)assignvariableop_22_adam_dense_1_kernel_v+
'assignvariableop_23_adam_dense_1_bias_v8
4assignvariableop_24_adam_lstm_1_lstm_cell_1_kernel_vB
>assignvariableop_25_adam_lstm_1_lstm_cell_1_recurrent_kernel_v6
2assignvariableop_26_adam_lstm_1_lstm_cell_1_bias_v
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_1_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_1_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_1_lstm_cell_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_1_lstm_cell_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_1_lstm_cell_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_1_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_1_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_1_lstm_cell_1_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_1_lstm_cell_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_1_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_1_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_1_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_1_lstm_cell_1_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_1_lstm_cell_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*?
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
_user_specified_namefile_prefix
?
?
'__inference_lstm_1_layer_call_fn_354931
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3524102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
'__inference_lstm_1_layer_call_fn_354942
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3525422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_353299

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????22

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_353115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_353115___redundant_placeholder04
0while_while_cond_353115___redundant_placeholder14
0while_while_cond_353115___redundant_placeholder24
0while_while_cond_353115___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353887

inputs'
#embedding_1_embedding_lookup_3534694
0lstm_1_lstm_cell_1_split_readvariableop_resource6
2lstm_1_lstm_cell_1_split_1_readvariableop_resource.
*lstm_1_lstm_cell_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding_1/embedding_lookup?!lstm_1/lstm_cell_1/ReadVariableOp?#lstm_1/lstm_cell_1/ReadVariableOp_1?#lstm_1/lstm_cell_1/ReadVariableOp_2?#lstm_1/lstm_cell_1/ReadVariableOp_3?'lstm_1/lstm_cell_1/split/ReadVariableOp?)lstm_1/lstm_cell_1/split_1/ReadVariableOp?lstm_1/whilev
embedding_1/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_1/Cast?
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_353469embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/353469*,
_output_shapes
:?????????? *
dtype02
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/353469*,
_output_shapes
:?????????? 2'
%embedding_1/embedding_lookup/Identity?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2)
'embedding_1/embedding_lookup/Identity_1?
spatial_dropout1d_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_1/Shape?
'spatial_dropout1d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_1/strided_slice/stack?
)spatial_dropout1d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_1/strided_slice/stack_1?
)spatial_dropout1d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_1/strided_slice/stack_2?
!spatial_dropout1d_1/strided_sliceStridedSlice"spatial_dropout1d_1/Shape:output:00spatial_dropout1d_1/strided_slice/stack:output:02spatial_dropout1d_1/strided_slice/stack_1:output:02spatial_dropout1d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_1/strided_slice?
)spatial_dropout1d_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_1/strided_slice_1/stack?
+spatial_dropout1d_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_1/strided_slice_1/stack_1?
+spatial_dropout1d_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_1/strided_slice_1/stack_2?
#spatial_dropout1d_1/strided_slice_1StridedSlice"spatial_dropout1d_1/Shape:output:02spatial_dropout1d_1/strided_slice_1/stack:output:04spatial_dropout1d_1/strided_slice_1/stack_1:output:04spatial_dropout1d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_1/strided_slice_1?
!spatial_dropout1d_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2#
!spatial_dropout1d_1/dropout/Const?
spatial_dropout1d_1/dropout/MulMul0embedding_1/embedding_lookup/Identity_1:output:0*spatial_dropout1d_1/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2!
spatial_dropout1d_1/dropout/Mul?
2spatial_dropout1d_1/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_1/dropout/random_uniform/shape/1?
0spatial_dropout1d_1/dropout/random_uniform/shapePack*spatial_dropout1d_1/strided_slice:output:0;spatial_dropout1d_1/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_1/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_1/dropout/random_uniform/shape?
8spatial_dropout1d_1/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_1/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02:
8spatial_dropout1d_1/dropout/random_uniform/RandomUniform?
*spatial_dropout1d_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2,
*spatial_dropout1d_1/dropout/GreaterEqual/y?
(spatial_dropout1d_1/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_1/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2*
(spatial_dropout1d_1/dropout/GreaterEqual?
 spatial_dropout1d_1/dropout/CastCast,spatial_dropout1d_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2"
 spatial_dropout1d_1/dropout/Cast?
!spatial_dropout1d_1/dropout/Mul_1Mul#spatial_dropout1d_1/dropout/Mul:z:0$spatial_dropout1d_1/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2#
!spatial_dropout1d_1/dropout/Mul_1q
lstm_1/ShapeShape%spatial_dropout1d_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_1/Shape?
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack?
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1?
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2?
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros/mul/y?
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/Less/y?
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros/packed/1?
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const?
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros_1/mul/y?
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/Less/y?
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros_1/packed/1?
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const?
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/zeros_1?
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm?
lstm_1/transpose	Transpose%spatial_dropout1d_1/dropout/Mul_1:z:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1?
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack?
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1?
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2?
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1?
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_1/TensorArrayV2/element_shape?
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2?
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor?
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack?
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1?
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2?
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_1/strided_slice_2?
"lstm_1/lstm_cell_1/ones_like/ShapeShapelstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/ones_like/Shape?
"lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_1/lstm_cell_1/ones_like/Const?
lstm_1/lstm_cell_1/ones_likeFill+lstm_1/lstm_cell_1/ones_like/Shape:output:0+lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/ones_like?
 lstm_1/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2"
 lstm_1/lstm_cell_1/dropout/Const?
lstm_1/lstm_cell_1/dropout/MulMul%lstm_1/lstm_cell_1/ones_like:output:0)lstm_1/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/lstm_cell_1/dropout/Mul?
 lstm_1/lstm_cell_1/dropout/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_1/lstm_cell_1/dropout/Shape?
7lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform)lstm_1/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ڠ?29
7lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform?
)lstm_1/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2+
)lstm_1/lstm_cell_1/dropout/GreaterEqual/y?
'lstm_1/lstm_cell_1/dropout/GreaterEqualGreaterEqual@lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform:output:02lstm_1/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2)
'lstm_1/lstm_cell_1/dropout/GreaterEqual?
lstm_1/lstm_cell_1/dropout/CastCast+lstm_1/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2!
lstm_1/lstm_cell_1/dropout/Cast?
 lstm_1/lstm_cell_1/dropout/Mul_1Mul"lstm_1/lstm_cell_1/dropout/Mul:z:0#lstm_1/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2"
 lstm_1/lstm_cell_1/dropout/Mul_1?
"lstm_1/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_1/Const?
 lstm_1/lstm_cell_1/dropout_1/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_1/lstm_cell_1/dropout_1/Mul?
"lstm_1/lstm_cell_1/dropout_1/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_1/Shape?
9lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?י2;
9lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_1/lstm_cell_1/dropout_1/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_1/CastCast-lstm_1/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_1/lstm_cell_1/dropout_1/Cast?
"lstm_1/lstm_cell_1/dropout_1/Mul_1Mul$lstm_1/lstm_cell_1/dropout_1/Mul:z:0%lstm_1/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_1/lstm_cell_1/dropout_1/Mul_1?
"lstm_1/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_2/Const?
 lstm_1/lstm_cell_1/dropout_2/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_1/lstm_cell_1/dropout_2/Mul?
"lstm_1/lstm_cell_1/dropout_2/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_2/Shape?
9lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2;
9lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_1/lstm_cell_1/dropout_2/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_2/CastCast-lstm_1/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_1/lstm_cell_1/dropout_2/Cast?
"lstm_1/lstm_cell_1/dropout_2/Mul_1Mul$lstm_1/lstm_cell_1/dropout_2/Mul:z:0%lstm_1/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_1/lstm_cell_1/dropout_2/Mul_1?
"lstm_1/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_3/Const?
 lstm_1/lstm_cell_1/dropout_3/MulMul%lstm_1/lstm_cell_1/ones_like:output:0+lstm_1/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_1/lstm_cell_1/dropout_3/Mul?
"lstm_1/lstm_cell_1/dropout_3/ShapeShape%lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_3/Shape?
9lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2;
9lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)lstm_1/lstm_cell_1/dropout_3/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_3/CastCast-lstm_1/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!lstm_1/lstm_cell_1/dropout_3/Cast?
"lstm_1/lstm_cell_1/dropout_3/Mul_1Mul$lstm_1/lstm_cell_1/dropout_3/Mul:z:0%lstm_1/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"lstm_1/lstm_cell_1/dropout_3/Mul_1?
$lstm_1/lstm_cell_1/ones_like_1/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_1/lstm_cell_1/ones_like_1/Shape?
$lstm_1/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_1/lstm_cell_1/ones_like_1/Const?
lstm_1/lstm_cell_1/ones_like_1Fill-lstm_1/lstm_cell_1/ones_like_1/Shape:output:0-lstm_1/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22 
lstm_1/lstm_cell_1/ones_like_1?
"lstm_1/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_4/Const?
 lstm_1/lstm_cell_1/dropout_4/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/lstm_cell_1/dropout_4/Mul?
"lstm_1/lstm_cell_1/dropout_4/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_4/Shape?
9lstm_1/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??72;
9lstm_1/lstm_cell_1/dropout_4/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_4/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22+
)lstm_1/lstm_cell_1/dropout_4/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_4/CastCast-lstm_1/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22#
!lstm_1/lstm_cell_1/dropout_4/Cast?
"lstm_1/lstm_cell_1/dropout_4/Mul_1Mul$lstm_1/lstm_cell_1/dropout_4/Mul:z:0%lstm_1/lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/lstm_cell_1/dropout_4/Mul_1?
"lstm_1/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_5/Const?
 lstm_1/lstm_cell_1/dropout_5/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/lstm_cell_1/dropout_5/Mul?
"lstm_1/lstm_cell_1/dropout_5/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_5/Shape?
9lstm_1/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2缆2;
9lstm_1/lstm_cell_1/dropout_5/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_5/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22+
)lstm_1/lstm_cell_1/dropout_5/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_5/CastCast-lstm_1/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22#
!lstm_1/lstm_cell_1/dropout_5/Cast?
"lstm_1/lstm_cell_1/dropout_5/Mul_1Mul$lstm_1/lstm_cell_1/dropout_5/Mul:z:0%lstm_1/lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/lstm_cell_1/dropout_5/Mul_1?
"lstm_1/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_6/Const?
 lstm_1/lstm_cell_1/dropout_6/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/lstm_cell_1/dropout_6/Mul?
"lstm_1/lstm_cell_1/dropout_6/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_6/Shape?
9lstm_1/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2;
9lstm_1/lstm_cell_1/dropout_6/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_6/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22+
)lstm_1/lstm_cell_1/dropout_6/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_6/CastCast-lstm_1/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22#
!lstm_1/lstm_cell_1/dropout_6/Cast?
"lstm_1/lstm_cell_1/dropout_6/Mul_1Mul$lstm_1/lstm_cell_1/dropout_6/Mul:z:0%lstm_1/lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/lstm_cell_1/dropout_6/Mul_1?
"lstm_1/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2$
"lstm_1/lstm_cell_1/dropout_7/Const?
 lstm_1/lstm_cell_1/dropout_7/MulMul'lstm_1/lstm_cell_1/ones_like_1:output:0+lstm_1/lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/lstm_cell_1/dropout_7/Mul?
"lstm_1/lstm_cell_1/dropout_7/ShapeShape'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/dropout_7/Shape?
9lstm_1/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??y2;
9lstm_1/lstm_cell_1/dropout_7/random_uniform/RandomUniform?
+lstm_1/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2-
+lstm_1/lstm_cell_1/dropout_7/GreaterEqual/y?
)lstm_1/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualBlstm_1/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22+
)lstm_1/lstm_cell_1/dropout_7/GreaterEqual?
!lstm_1/lstm_cell_1/dropout_7/CastCast-lstm_1/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22#
!lstm_1/lstm_cell_1/dropout_7/Cast?
"lstm_1/lstm_cell_1/dropout_7/Mul_1Mul$lstm_1/lstm_cell_1/dropout_7/Mul:z:0%lstm_1/lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/lstm_cell_1/dropout_7/Mul_1?
lstm_1/lstm_cell_1/mulMullstm_1/strided_slice_2:output:0$lstm_1/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul?
lstm_1/lstm_cell_1/mul_1Mullstm_1/strided_slice_2:output:0&lstm_1/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul_1?
lstm_1/lstm_cell_1/mul_2Mullstm_1/strided_slice_2:output:0&lstm_1/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul_2?
lstm_1/lstm_cell_1/mul_3Mullstm_1/strided_slice_2:output:0&lstm_1/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul_3v
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const?
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_1/split/split_dim?
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02)
'lstm_1/lstm_cell_1/split/ReadVariableOp?
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_1/lstm_cell_1/split?
lstm_1/lstm_cell_1/MatMulMatMullstm_1/lstm_cell_1/mul:z:0!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul?
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/lstm_cell_1/mul_1:z:0!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_1?
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/lstm_cell_1/mul_2:z:0!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_2?
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/lstm_cell_1/mul_3:z:0!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_3z
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const_1?
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_1/lstm_cell_1/split_1/split_dim?
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_1/lstm_cell_1/split_1/ReadVariableOp?
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_1/lstm_cell_1/split_1?
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd?
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd_1?
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd_2?
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd_3?
lstm_1/lstm_cell_1/mul_4Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_4?
lstm_1/lstm_cell_1/mul_5Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_5?
lstm_1/lstm_cell_1/mul_6Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_6?
lstm_1/lstm_cell_1/mul_7Mullstm_1/zeros:output:0&lstm_1/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_7?
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02#
!lstm_1/lstm_cell_1/ReadVariableOp?
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_1/lstm_cell_1/strided_slice/stack?
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_1/lstm_cell_1/strided_slice/stack_1?
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice/stack_2?
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2"
 lstm_1/lstm_cell_1/strided_slice?
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/lstm_cell_1/mul_4:z:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_4?
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add?
lstm_1/lstm_cell_1/SigmoidSigmoidlstm_1/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Sigmoid?
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_1?
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_1/lstm_cell_1/strided_slice_1/stack?
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_1?
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_2?
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_1?
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/lstm_cell_1/mul_5:z:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_5?
lstm_1/lstm_cell_1/add_1AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_1?
lstm_1/lstm_cell_1/Sigmoid_1Sigmoidlstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Sigmoid_1?
lstm_1/lstm_cell_1/mul_8Mul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_8?
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_2?
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(lstm_1/lstm_cell_1/strided_slice_2/stack?
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_1?
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_2?
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_2?
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/lstm_cell_1/mul_6:z:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_6?
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_2?
lstm_1/lstm_cell_1/TanhTanhlstm_1/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Tanh?
lstm_1/lstm_cell_1/mul_9Mullstm_1/lstm_cell_1/Sigmoid:y:0lstm_1/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_9?
lstm_1/lstm_cell_1/add_3AddV2lstm_1/lstm_cell_1/mul_8:z:0lstm_1/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_3?
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_3?
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(lstm_1/lstm_cell_1/strided_slice_3/stack?
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_1?
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_2?
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_3?
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/lstm_cell_1/mul_7:z:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_7?
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_4?
lstm_1/lstm_cell_1/Sigmoid_2Sigmoidlstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Sigmoid_2?
lstm_1/lstm_cell_1/Tanh_1Tanhlstm_1/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Tanh_1?
lstm_1/lstm_cell_1/mul_10Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_10?
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2&
$lstm_1/TensorArrayV2_1/element_shape?
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time?
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter?
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_1_while_body_353672*$
condR
lstm_1_while_cond_353671*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
lstm_1/while?
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack?
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_1/strided_slice_3/stack?
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1?
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2?
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
lstm_1/strided_slice_3?
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm?
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtimew
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMullstm_1/strided_slice_3:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShapelstm_1/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_1/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoid?
IdentityIdentitydense_1/Sigmoid:y:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding_1/embedding_lookup"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
lstm_1_while_cond_354012*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_354012___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_354012___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_354012___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_354012___redundant_placeholder3
lstm_1_while_identity
?
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_lstm_cell_1_layer_call_fn_355898

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_3519632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:????????? :?????????2:?????????2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
ե
?

lstm_1_while_body_354013*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0>
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_06
2lstm_1_while_lstm_cell_1_readvariableop_resource_0
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor:
6lstm_1_while_lstm_cell_1_split_readvariableop_resource<
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource4
0lstm_1_while_lstm_cell_1_readvariableop_resource??'lstm_1/while/lstm_cell_1/ReadVariableOp?)lstm_1/while/lstm_cell_1/ReadVariableOp_1?)lstm_1/while/lstm_cell_1/ReadVariableOp_2?)lstm_1/while/lstm_cell_1/ReadVariableOp_3?-lstm_1/while/lstm_cell_1/split/ReadVariableOp?/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem?
(lstm_1/while/lstm_cell_1/ones_like/ShapeShape7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/ones_like/Shape?
(lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_1/while/lstm_cell_1/ones_like/Const?
"lstm_1/while/lstm_cell_1/ones_likeFill1lstm_1/while/lstm_cell_1/ones_like/Shape:output:01lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_1/while/lstm_cell_1/ones_like?
*lstm_1/while/lstm_cell_1/ones_like_1/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_1/while/lstm_cell_1/ones_like_1/Shape?
*lstm_1/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_1/while/lstm_cell_1/ones_like_1/Const?
$lstm_1/while/lstm_cell_1/ones_like_1Fill3lstm_1/while/lstm_cell_1/ones_like_1/Shape:output:03lstm_1/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22&
$lstm_1/while/lstm_cell_1/ones_like_1?
lstm_1/while/lstm_cell_1/mulMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/while/lstm_cell_1/mul?
lstm_1/while/lstm_cell_1/mul_1Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/while/lstm_cell_1/mul_1?
lstm_1/while/lstm_cell_1/mul_2Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/while/lstm_cell_1/mul_2?
lstm_1/while/lstm_cell_1/mul_3Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/while/lstm_cell_1/mul_3?
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_1/while/lstm_cell_1/Const?
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_1/split/split_dim?
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02/
-lstm_1/while/lstm_cell_1/split/ReadVariableOp?
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2 
lstm_1/while/lstm_cell_1/split?
lstm_1/while/lstm_cell_1/MatMulMatMul lstm_1/while/lstm_cell_1/mul:z:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22!
lstm_1/while/lstm_cell_1/MatMul?
!lstm_1/while/lstm_cell_1/MatMul_1MatMul"lstm_1/while/lstm_cell_1/mul_1:z:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_1?
!lstm_1/while/lstm_cell_1/MatMul_2MatMul"lstm_1/while/lstm_cell_1/mul_2:z:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_2?
!lstm_1/while/lstm_cell_1/MatMul_3MatMul"lstm_1/while/lstm_cell_1/mul_3:z:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_3?
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_1/while/lstm_cell_1/Const_1?
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_1/while/lstm_cell_1/split_1/split_dim?
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2"
 lstm_1/while/lstm_cell_1/split_1?
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/while/lstm_cell_1/BiasAdd?
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/BiasAdd_1?
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/BiasAdd_2?
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/BiasAdd_3?
lstm_1/while/lstm_cell_1/mul_4Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_4?
lstm_1/while/lstm_cell_1/mul_5Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_5?
lstm_1/while/lstm_cell_1/mul_6Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_6?
lstm_1/while/lstm_cell_1/mul_7Mullstm_1_while_placeholder_2-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_7?
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02)
'lstm_1/while/lstm_cell_1/ReadVariableOp?
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_1/while/lstm_cell_1/strided_slice/stack?
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_1/while/lstm_cell_1/strided_slice/stack_1?
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice/stack_2?
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2(
&lstm_1/while/lstm_cell_1/strided_slice?
!lstm_1/while/lstm_cell_1/MatMul_4MatMul"lstm_1/while/lstm_cell_1/mul_4:z:0/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_4?
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/while/lstm_cell_1/add?
 lstm_1/while/lstm_cell_1/SigmoidSigmoid lstm_1/while/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/while/lstm_cell_1/Sigmoid?
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_1?
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_1/while/lstm_cell_1/strided_slice_1/stack?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_1?
!lstm_1/while/lstm_cell_1/MatMul_5MatMul"lstm_1/while/lstm_cell_1/mul_5:z:01lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_5?
lstm_1/while/lstm_cell_1/add_1AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_1?
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/Sigmoid_1?
lstm_1/while/lstm_cell_1/mul_8Mul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_8?
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_2?
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   20
.lstm_1/while/lstm_cell_1/strided_slice_2/stack?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_2?
!lstm_1/while/lstm_cell_1/MatMul_6MatMul"lstm_1/while/lstm_cell_1/mul_6:z:01lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_6?
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_2?
lstm_1/while/lstm_cell_1/TanhTanh"lstm_1/while/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/while/lstm_cell_1/Tanh?
lstm_1/while/lstm_cell_1/mul_9Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0!lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_9?
lstm_1/while/lstm_cell_1/add_3AddV2"lstm_1/while/lstm_cell_1/mul_8:z:0"lstm_1/while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_3?
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_3?
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   20
.lstm_1/while/lstm_cell_1/strided_slice_3/stack?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_3?
!lstm_1/while/lstm_cell_1/MatMul_7MatMul"lstm_1/while/lstm_cell_1/mul_7:z:01lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_7?
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_4?
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/Sigmoid_2?
lstm_1/while/lstm_cell_1/Tanh_1Tanh"lstm_1/while/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22!
lstm_1/while/lstm_cell_1/Tanh_1?
lstm_1/while/lstm_cell_1/mul_10Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0#lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22!
lstm_1/while/lstm_cell_1/mul_10?
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y?
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y?
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1?
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity?
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1?
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2?
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3?
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_1/mul_10:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
lstm_1/while/Identity_4?
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_3:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"?
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
m
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354235

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????? 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354267

inputs
identity?D
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
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
 *????2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
while_cond_352340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_352340___redundant_placeholder04
0while_while_cond_352340___redundant_placeholder14
0while_while_cond_352340___redundant_placeholder24
0while_while_cond_352340___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
??
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_354665
inputs_0-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout/Const?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Mul?
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shape?
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_1/dropout/random_uniform/RandomUniform?
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_cell_1/dropout/GreaterEqual/y?
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_1/dropout/GreaterEqual?
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Cast?
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_1/Const?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Mul?
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shape?
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2º?24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform?
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_1/GreaterEqual/y?
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_1/GreaterEqual?
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Cast?
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_2/Const?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Mul?
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape?
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform?
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_2/GreaterEqual/y?
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_2/GreaterEqual?
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Cast?
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_3/Const?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Mul?
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shape?
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform?
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_3/GreaterEqual/y?
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_3/GreaterEqual?
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Cast?
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Mul_1|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape?
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like_1/Const?
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/ones_like_1
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_4/Const?
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Mul?
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_4/Shape?
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_4/random_uniform/RandomUniform?
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_4/GreaterEqual/y?
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_4/GreaterEqual?
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Cast?
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Mul_1
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_5/Const?
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Mul?
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_5/Shape?
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_5/random_uniform/RandomUniform?
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_5/GreaterEqual/y?
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_5/GreaterEqual?
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Cast?
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Mul_1
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_6/Const?
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Mul?
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_6/Shape?
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??924
2lstm_cell_1/dropout_6/random_uniform/RandomUniform?
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_6/GreaterEqual/y?
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_6/GreaterEqual?
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Cast?
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Mul_1
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_7/Const?
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Mul?
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_7/Shape?
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2А?24
2lstm_cell_1/dropout_7/random_uniform/RandomUniform?
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_7/GreaterEqual/y?
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_7/GreaterEqual?
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Cast?
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Mul_1?
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_4?
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_5?
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_6?
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_7?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_8?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh?
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_9?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_354465*
condR
while_cond_354464*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
?
?
,__inference_lstm_cell_1_layer_call_fn_355915

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_3520472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:????????? :?????????2:?????????2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
??
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_353252

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
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
:?????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/ones_like|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape?
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like_1/Const?
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/ones_like_1?
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_4?
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_5?
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_6?
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_7?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_8?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh?
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_9?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_353116*
condR
while_cond_353115*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_355797

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
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
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
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
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2?߃2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2ɧf2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
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
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????22

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
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????22
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
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
strided_slice/stack_2?
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
:?????????22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:?????????22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:?????????22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:?????????22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:????????? :?????????2:?????????2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?$
?
while_body_352341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_1_352365_0
while_lstm_cell_1_352367_0
while_lstm_cell_1_352369_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_1_352365
while_lstm_cell_1_352367
while_lstm_cell_1_352369??)while/lstm_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_352365_0while_lstm_cell_1_352367_0while_lstm_cell_1_352369_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_3519632+
)while/lstm_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_1_352365while_lstm_cell_1_352365_0"6
while_lstm_cell_1_352367while_lstm_cell_1_352367_0"6
while_lstm_cell_1_352369while_lstm_cell_1_352369_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
m
4__inference_spatial_dropout1d_1_layer_call_fn_354240

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3525982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
'__inference_lstm_1_layer_call_fn_355602

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3532522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
while_cond_352796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_352796___redundant_placeholder04
0while_while_cond_352796___redundant_placeholder14
0while_while_cond_352796___redundant_placeholder24
0while_while_cond_352796___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353361
embedding_1_input
embedding_1_353343
lstm_1_353347
lstm_1_353349
lstm_1_353351
dense_1_353355
dense_1_353357
identity??dense_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_353343*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3525652%
#embedding_1/StatefulPartitionedCall?
#spatial_dropout1d_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3526032%
#spatial_dropout1d_1/PartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_1/PartitionedCall:output:0lstm_1_353347lstm_1_353349lstm_1_353351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3532522 
lstm_1/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3532992
dropout_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_353355dense_1_353357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3533232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameembedding_1_input
??
?
while_body_355125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/ones_like?
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
while/lstm_cell_1/dropout/Const?
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/dropout/Mul?
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape?
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform?
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(while/lstm_cell_1/dropout/GreaterEqual/y?
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_1/dropout/GreaterEqual?
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_1/dropout/Cast?
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout/Mul_1?
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_1/Const?
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_1/Mul?
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape?
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y?
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_1/GreaterEqual?
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_1/Cast?
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_1/Mul_1?
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_2/Const?
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_2/Mul?
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape?
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ѳ2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y?
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_2/GreaterEqual?
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_2/Cast?
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_2/Mul_1?
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_3/Const?
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_3/Mul?
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape?
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y?
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_3/GreaterEqual?
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_3/Cast?
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_3/Mul_1?
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape?
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_1/ones_like_1/Const?
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/ones_like_1?
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_4/Const?
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_4/Mul?
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_4/Shape?
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2ݬ?2:
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_4/GreaterEqual/y?
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_4/GreaterEqual?
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_4/Cast?
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_4/Mul_1?
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_5/Const?
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_5/Mul?
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_5/Shape?
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2?ޖ2:
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_5/GreaterEqual/y?
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_5/GreaterEqual?
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_5/Cast?
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_5/Mul_1?
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_6/Const?
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_6/Mul?
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_6/Shape?
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??32:
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_6/GreaterEqual/y?
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_6/GreaterEqual?
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_6/Cast?
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_6/Mul_1?
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_7/Const?
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_7/Mul?
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_7/Shape?
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_7/GreaterEqual/y?
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_7/GreaterEqual?
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_7/Cast?
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_7/Mul_1?
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_4?
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_5?
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_6?
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_7?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_8?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_9?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
??
?

lstm_1_while_body_353672*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0>
:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_06
2lstm_1_while_lstm_cell_1_readvariableop_resource_0
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor:
6lstm_1_while_lstm_cell_1_split_readvariableop_resource<
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource4
0lstm_1_while_lstm_cell_1_readvariableop_resource??'lstm_1/while/lstm_cell_1/ReadVariableOp?)lstm_1/while/lstm_cell_1/ReadVariableOp_1?)lstm_1/while/lstm_cell_1/ReadVariableOp_2?)lstm_1/while/lstm_cell_1/ReadVariableOp_3?-lstm_1/while/lstm_cell_1/split/ReadVariableOp?/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2@
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype022
0lstm_1/while/TensorArrayV2Read/TensorListGetItem?
(lstm_1/while/lstm_cell_1/ones_like/ShapeShape7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/ones_like/Shape?
(lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm_1/while/lstm_cell_1/ones_like/Const?
"lstm_1/while/lstm_cell_1/ones_likeFill1lstm_1/while/lstm_cell_1/ones_like/Shape:output:01lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_1/while/lstm_cell_1/ones_like?
&lstm_1/while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2(
&lstm_1/while/lstm_cell_1/dropout/Const?
$lstm_1/while/lstm_cell_1/dropout/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:0/lstm_1/while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2&
$lstm_1/while/lstm_cell_1/dropout/Mul?
&lstm_1/while/lstm_cell_1/dropout/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_1/while/lstm_cell_1/dropout/Shape?
=lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform/lstm_1/while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2?
=lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniform?
/lstm_1/while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?21
/lstm_1/while/lstm_cell_1/dropout/GreaterEqual/y?
-lstm_1/while/lstm_cell_1/dropout/GreaterEqualGreaterEqualFlstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:08lstm_1/while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2/
-lstm_1/while/lstm_cell_1/dropout/GreaterEqual?
%lstm_1/while/lstm_cell_1/dropout/CastCast1lstm_1/while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2'
%lstm_1/while/lstm_cell_1/dropout/Cast?
&lstm_1/while/lstm_cell_1/dropout/Mul_1Mul(lstm_1/while/lstm_cell_1/dropout/Mul:z:0)lstm_1/while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2(
&lstm_1/while/lstm_cell_1/dropout/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_1/Const?
&lstm_1/while/lstm_cell_1/dropout_1/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_1/while/lstm_cell_1/dropout_1/Mul?
(lstm_1/while/lstm_cell_1/dropout_1/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_1/Shape?
?lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??@2A
?lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_1/CastCast3lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_1/while/lstm_cell_1/dropout_1/Cast?
(lstm_1/while/lstm_cell_1/dropout_1/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_1/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_1/while/lstm_cell_1/dropout_1/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_2/Const?
&lstm_1/while/lstm_cell_1/dropout_2/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_1/while/lstm_cell_1/dropout_2/Mul?
(lstm_1/while/lstm_cell_1/dropout_2/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_2/Shape?
?lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??T2A
?lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_2/CastCast3lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_1/while/lstm_cell_1/dropout_2/Cast?
(lstm_1/while/lstm_cell_1/dropout_2/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_2/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_1/while/lstm_cell_1/dropout_2/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_3/Const?
&lstm_1/while/lstm_cell_1/dropout_3/MulMul+lstm_1/while/lstm_cell_1/ones_like:output:01lstm_1/while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2(
&lstm_1/while/lstm_cell_1/dropout_3/Mul?
(lstm_1/while/lstm_cell_1/dropout_3/ShapeShape+lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_3/Shape?
?lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2A
?lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 21
/lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_3/CastCast3lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2)
'lstm_1/while/lstm_cell_1/dropout_3/Cast?
(lstm_1/while/lstm_cell_1/dropout_3/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_3/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2*
(lstm_1/while/lstm_cell_1/dropout_3/Mul_1?
*lstm_1/while/lstm_cell_1/ones_like_1/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_1/while/lstm_cell_1/ones_like_1/Shape?
*lstm_1/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*lstm_1/while/lstm_cell_1/ones_like_1/Const?
$lstm_1/while/lstm_cell_1/ones_like_1Fill3lstm_1/while/lstm_cell_1/ones_like_1/Shape:output:03lstm_1/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22&
$lstm_1/while/lstm_cell_1/ones_like_1?
(lstm_1/while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_4/Const?
&lstm_1/while/lstm_cell_1/dropout_4/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22(
&lstm_1/while/lstm_cell_1/dropout_4/Mul?
(lstm_1/while/lstm_cell_1/dropout_4/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_4/Shape?
?lstm_1/while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2ݨ?2A
?lstm_1/while/lstm_cell_1/dropout_4/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????221
/lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_4/CastCast3lstm_1/while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22)
'lstm_1/while/lstm_cell_1/dropout_4/Cast?
(lstm_1/while/lstm_cell_1/dropout_4/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_4/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22*
(lstm_1/while/lstm_cell_1/dropout_4/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_5/Const?
&lstm_1/while/lstm_cell_1/dropout_5/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22(
&lstm_1/while/lstm_cell_1/dropout_5/Mul?
(lstm_1/while/lstm_cell_1/dropout_5/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_5/Shape?
?lstm_1/while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??B2A
?lstm_1/while/lstm_cell_1/dropout_5/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????221
/lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_5/CastCast3lstm_1/while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22)
'lstm_1/while/lstm_cell_1/dropout_5/Cast?
(lstm_1/while/lstm_cell_1/dropout_5/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_5/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22*
(lstm_1/while/lstm_cell_1/dropout_5/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_6/Const?
&lstm_1/while/lstm_cell_1/dropout_6/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22(
&lstm_1/while/lstm_cell_1/dropout_6/Mul?
(lstm_1/while/lstm_cell_1/dropout_6/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_6/Shape?
?lstm_1/while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2A
?lstm_1/while/lstm_cell_1/dropout_6/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????221
/lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_6/CastCast3lstm_1/while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22)
'lstm_1/while/lstm_cell_1/dropout_6/Cast?
(lstm_1/while/lstm_cell_1/dropout_6/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_6/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22*
(lstm_1/while/lstm_cell_1/dropout_6/Mul_1?
(lstm_1/while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2*
(lstm_1/while/lstm_cell_1/dropout_7/Const?
&lstm_1/while/lstm_cell_1/dropout_7/MulMul-lstm_1/while/lstm_cell_1/ones_like_1:output:01lstm_1/while/lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22(
&lstm_1/while/lstm_cell_1/dropout_7/Mul?
(lstm_1/while/lstm_cell_1/dropout_7/ShapeShape-lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_1/while/lstm_cell_1/dropout_7/Shape?
?lstm_1/while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2A
?lstm_1/while/lstm_cell_1/dropout_7/random_uniform/RandomUniform?
1lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?23
1lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual/y?
/lstm_1/while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????221
/lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual?
'lstm_1/while/lstm_cell_1/dropout_7/CastCast3lstm_1/while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22)
'lstm_1/while/lstm_cell_1/dropout_7/Cast?
(lstm_1/while/lstm_cell_1/dropout_7/Mul_1Mul*lstm_1/while/lstm_cell_1/dropout_7/Mul:z:0+lstm_1/while/lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22*
(lstm_1/while/lstm_cell_1/dropout_7/Mul_1?
lstm_1/while/lstm_cell_1/mulMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_1/while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_1/while/lstm_cell_1/mul?
lstm_1/while/lstm_cell_1/mul_1Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_1/while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/while/lstm_cell_1/mul_1?
lstm_1/while/lstm_cell_1/mul_2Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_1/while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/while/lstm_cell_1/mul_2?
lstm_1/while/lstm_cell_1/mul_3Mul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_1/while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2 
lstm_1/while/lstm_cell_1/mul_3?
lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_1/while/lstm_cell_1/Const?
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_1/while/lstm_cell_1/split/split_dim?
-lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02/
-lstm_1/while/lstm_cell_1/split/ReadVariableOp?
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:05lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2 
lstm_1/while/lstm_cell_1/split?
lstm_1/while/lstm_cell_1/MatMulMatMul lstm_1/while/lstm_cell_1/mul:z:0'lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22!
lstm_1/while/lstm_cell_1/MatMul?
!lstm_1/while/lstm_cell_1/MatMul_1MatMul"lstm_1/while/lstm_cell_1/mul_1:z:0'lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_1?
!lstm_1/while/lstm_cell_1/MatMul_2MatMul"lstm_1/while/lstm_cell_1/mul_2:z:0'lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_2?
!lstm_1/while/lstm_cell_1/MatMul_3MatMul"lstm_1/while/lstm_cell_1/mul_3:z:0'lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_3?
 lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_1/while/lstm_cell_1/Const_1?
*lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_1/while/lstm_cell_1/split_1/split_dim?
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
 lstm_1/while/lstm_cell_1/split_1Split3lstm_1/while/lstm_cell_1/split_1/split_dim:output:07lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2"
 lstm_1/while/lstm_cell_1/split_1?
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd)lstm_1/while/lstm_cell_1/MatMul:product:0)lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/while/lstm_cell_1/BiasAdd?
"lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_1/MatMul_1:product:0)lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/BiasAdd_1?
"lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_1/MatMul_2:product:0)lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/BiasAdd_2?
"lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_1/MatMul_3:product:0)lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/BiasAdd_3?
lstm_1/while/lstm_cell_1/mul_4Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_4?
lstm_1/while/lstm_cell_1/mul_5Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_5?
lstm_1/while/lstm_cell_1/mul_6Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_6?
lstm_1/while/lstm_cell_1/mul_7Mullstm_1_while_placeholder_2,lstm_1/while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_7?
'lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02)
'lstm_1/while/lstm_cell_1/ReadVariableOp?
,lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_1/while/lstm_cell_1/strided_slice/stack?
.lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_1/while/lstm_cell_1/strided_slice/stack_1?
.lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_1/while/lstm_cell_1/strided_slice/stack_2?
&lstm_1/while/lstm_cell_1/strided_sliceStridedSlice/lstm_1/while/lstm_cell_1/ReadVariableOp:value:05lstm_1/while/lstm_cell_1/strided_slice/stack:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2(
&lstm_1/while/lstm_cell_1/strided_slice?
!lstm_1/while/lstm_cell_1/MatMul_4MatMul"lstm_1/while/lstm_cell_1/mul_4:z:0/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_4?
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/BiasAdd:output:0+lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/while/lstm_cell_1/add?
 lstm_1/while/lstm_cell_1/SigmoidSigmoid lstm_1/while/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22"
 lstm_1/while/lstm_cell_1/Sigmoid?
)lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_1?
.lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   20
.lstm_1/while/lstm_cell_1/strided_slice_1/stack?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_1/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_1?
!lstm_1/while/lstm_cell_1/MatMul_5MatMul"lstm_1/while/lstm_cell_1/mul_5:z:01lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_5?
lstm_1/while/lstm_cell_1/add_1AddV2+lstm_1/while/lstm_cell_1/BiasAdd_1:output:0+lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_1?
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/Sigmoid_1?
lstm_1/while/lstm_cell_1/mul_8Mul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_8?
)lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_2?
.lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   20
.lstm_1/while/lstm_cell_1/strided_slice_2/stack?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_2/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_2?
!lstm_1/while/lstm_cell_1/MatMul_6MatMul"lstm_1/while/lstm_cell_1/mul_6:z:01lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_6?
lstm_1/while/lstm_cell_1/add_2AddV2+lstm_1/while/lstm_cell_1/BiasAdd_2:output:0+lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_2?
lstm_1/while/lstm_cell_1/TanhTanh"lstm_1/while/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/while/lstm_cell_1/Tanh?
lstm_1/while/lstm_cell_1/mul_9Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0!lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/mul_9?
lstm_1/while/lstm_cell_1/add_3AddV2"lstm_1/while/lstm_cell_1/mul_8:z:0"lstm_1/while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_3?
)lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02+
)lstm_1/while/lstm_cell_1/ReadVariableOp_3?
.lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   20
.lstm_1/while/lstm_cell_1/strided_slice_3/stack?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_1?
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_1/while/lstm_cell_1/strided_slice_3/stack_2?
(lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2*
(lstm_1/while/lstm_cell_1/strided_slice_3?
!lstm_1/while/lstm_cell_1/MatMul_7MatMul"lstm_1/while/lstm_cell_1/mul_7:z:01lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22#
!lstm_1/while/lstm_cell_1/MatMul_7?
lstm_1/while/lstm_cell_1/add_4AddV2+lstm_1/while/lstm_cell_1/BiasAdd_3:output:0+lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22 
lstm_1/while/lstm_cell_1/add_4?
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22$
"lstm_1/while/lstm_cell_1/Sigmoid_2?
lstm_1/while/lstm_cell_1/Tanh_1Tanh"lstm_1/while/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22!
lstm_1/while/lstm_cell_1/Tanh_1?
lstm_1/while/lstm_cell_1/mul_10Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0#lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22!
lstm_1/while/lstm_cell_1/mul_10?
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder#lstm_1/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_1/while/TensorArrayV2Write/TensorListSetItemj
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add/y?
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/addn
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/while/add_1/y?
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_1/while/add_1?
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity?
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_1?
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_2?
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_1/while/Identity_3?
lstm_1/while/Identity_4Identity#lstm_1/while/lstm_cell_1/mul_10:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
lstm_1/while/Identity_4?
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_3:z:0(^lstm_1/while/lstm_cell_1/ReadVariableOp*^lstm_1/while/lstm_cell_1/ReadVariableOp_1*^lstm_1/while/lstm_cell_1/ReadVariableOp_2*^lstm_1/while/lstm_cell_1/ReadVariableOp_3.^lstm_1/while/lstm_cell_1/split/ReadVariableOp0^lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
lstm_1/while/Identity_5"7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_1_readvariableop_resource2lstm_1_while_lstm_cell_1_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_1_split_1_readvariableop_resource:lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_1_split_readvariableop_resource8lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"?
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2R
'lstm_1/while/lstm_cell_1/ReadVariableOp'lstm_1/while/lstm_cell_1/ReadVariableOp2V
)lstm_1/while/lstm_cell_1/ReadVariableOp_1)lstm_1/while/lstm_cell_1/ReadVariableOp_12V
)lstm_1/while/lstm_cell_1/ReadVariableOp_2)lstm_1/while/lstm_cell_1/ReadVariableOp_22V
)lstm_1/while/lstm_cell_1/ReadVariableOp_3)lstm_1/while/lstm_cell_1/ReadVariableOp_32^
-lstm_1/while/lstm_cell_1/split/ReadVariableOp-lstm_1/while/lstm_cell_1/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
??
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_354920
inputs_0-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/ones_like|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape?
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like_1/Const?
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/ones_like_1?
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_4?
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_5?
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_6?
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_7?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_8?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh?
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_9?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_354784*
condR
while_cond_354783*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :?????????????????? 
"
_user_specified_name
inputs/0
??
?
while_body_354465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/ones_like?
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
while/lstm_cell_1/dropout/Const?
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/dropout/Mul?
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape?
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2ʭ?28
6while/lstm_cell_1/dropout/random_uniform/RandomUniform?
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(while/lstm_cell_1/dropout/GreaterEqual/y?
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_1/dropout/GreaterEqual?
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_1/dropout/Cast?
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout/Mul_1?
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_1/Const?
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_1/Mul?
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape?
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?ҩ2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y?
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_1/GreaterEqual?
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_1/Cast?
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_1/Mul_1?
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_2/Const?
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_2/Mul?
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape?
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y?
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_2/GreaterEqual?
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_2/Cast?
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_2/Mul_1?
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_3/Const?
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_3/Mul?
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape?
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y?
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_3/GreaterEqual?
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_3/Cast?
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_3/Mul_1?
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape?
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_1/ones_like_1/Const?
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/ones_like_1?
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_4/Const?
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_4/Mul?
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_4/Shape?
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_4/GreaterEqual/y?
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_4/GreaterEqual?
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_4/Cast?
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_4/Mul_1?
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_5/Const?
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_5/Mul?
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_5/Shape?
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_5/GreaterEqual/y?
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_5/GreaterEqual?
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_5/Cast?
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_5/Mul_1?
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_6/Const?
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_6/Mul?
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_6/Shape?
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_6/GreaterEqual/y?
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_6/GreaterEqual?
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_6/Cast?
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_6/Mul_1?
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_7/Const?
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_7/Mul?
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_7/Shape?
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_7/GreaterEqual/y?
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_7/GreaterEqual?
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_7/Cast?
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_7/Mul_1?
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_4?
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_5?
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_6?
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_7?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_8?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_9?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
m
4__inference_spatial_dropout1d_1_layer_call_fn_354277

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3517622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_355629

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3532992
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?D
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_352542

inputs
lstm_cell_1_352460
lstm_cell_1_352462
lstm_cell_1_352464
identity??#lstm_cell_1/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_352460lstm_cell_1_352462lstm_cell_1_352464*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_3520472%
#lstm_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_352460lstm_cell_1_352462lstm_cell_1_352464*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_352473*
condR
while_cond_352472*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_1/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
??
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_355580

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
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
:?????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/ones_like|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape?
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like_1/Const?
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/ones_like_1?
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_4?
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_5?
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_6?
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_7?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_8?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh?
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_9?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_355444*
condR
while_cond_355443*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?N
?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_355881

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
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
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
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
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????22

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
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????22
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
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
strided_slice/stack_2?
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
:?????????22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:?????????22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:?????????22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:?????????22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:????????? :?????????2:?????????2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?>
?
__inference__traced_save_356019
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
?? :2:: : : : : :	 ?:	2?:?: : : : :
?? :2::	 ?:	2?:?:
?? :2::	 ?:	2?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
?? :$ 

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
:	 ?:%
!

_output_shapes
:	2?:!

_output_shapes	
:?:
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
: :&"
 
_output_shapes
:
?? :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	 ?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?? :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	 ?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:

_output_shapes
: 
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_355614

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
P
4__inference_spatial_dropout1d_1_layer_call_fn_354282

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3517722
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
G__inference_embedding_1_layer_call_and_return_conditional_losses_352565

inputs
embedding_lookup_352559
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_352559Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/352559*,
_output_shapes
:?????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/352559*,
_output_shapes
:?????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353423

inputs
embedding_1_353405
lstm_1_353409
lstm_1_353411
lstm_1_353413
dense_1_353417
dense_1_353419
identity??dense_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_353405*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3525652%
#embedding_1/StatefulPartitionedCall?
#spatial_dropout1d_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3526032%
#spatial_dropout1d_1/PartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_1/PartitionedCall:output:0lstm_1_353409lstm_1_353411lstm_1_353413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3532522 
lstm_1/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3532992
dropout_1/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_353417dense_1_353419*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3533232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_354174

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3533852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354230

inputs
identity?D
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
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
 *????2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?$
?
while_body_352473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_1_352497_0
while_lstm_cell_1_352499_0
while_lstm_cell_1_352501_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_1_352497
while_lstm_cell_1_352499
while_lstm_cell_1_352501??)while/lstm_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_352497_0while_lstm_cell_1_352499_0while_lstm_cell_1_352501_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_3520472+
)while/lstm_cell_1/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2*^while/lstm_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_1_352497while_lstm_cell_1_352497_0"6
while_lstm_cell_1_352499while_lstm_cell_1_352499_0"6
while_lstm_cell_1_352501while_lstm_cell_1_352501_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353385

inputs
embedding_1_353367
lstm_1_353371
lstm_1_353373
lstm_1_353375
dense_1_353379
dense_1_353381
identity??dense_1/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?+spatial_dropout1d_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_353367*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3525652%
#embedding_1/StatefulPartitionedCall?
+spatial_dropout1d_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3525982-
+spatial_dropout1d_1/StatefulPartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_1/StatefulPartitionedCall:output:0lstm_1_353371lstm_1_353373lstm_1_353375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3529972 
lstm_1/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0,^spatial_dropout1d_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3532942#
!dropout_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_353379dense_1_353381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3533232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall,^spatial_dropout1d_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2Z
+spatial_dropout1d_1/StatefulPartitionedCall+spatial_dropout1d_1/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_352603

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:?????????? 2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353340
embedding_1_input
embedding_1_352574
lstm_1_353275
lstm_1_353277
lstm_1_353279
dense_1_353334
dense_1_353336
identity??dense_1/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?lstm_1/StatefulPartitionedCall?+spatial_dropout1d_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_352574*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3525652%
#embedding_1/StatefulPartitionedCall?
+spatial_dropout1d_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3525982-
+spatial_dropout1d_1/StatefulPartitionedCall?
lstm_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_1/StatefulPartitionedCall:output:0lstm_1_353275lstm_1_353277lstm_1_353279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3529972 
lstm_1/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0,^spatial_dropout1d_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3532942#
!dropout_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_353334dense_1_353336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3533232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall,^spatial_dropout1d_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2Z
+spatial_dropout1d_1/StatefulPartitionedCall+spatial_dropout1d_1/StatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameembedding_1_input
?
m
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354272

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_355619

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????22

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_351963

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
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
:????????? 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??V2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?˓2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
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
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??_2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout_7/Mul_1^
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
muld
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_1d
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
mul_2d
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
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
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????22

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
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????22
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
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
strided_slice/stack_2?
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
:?????????22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:?????????22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:?????????22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:?????????22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:????????? :?????????2:?????????2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
?
while_cond_352472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_352472___redundant_placeholder04
0while_while_cond_352472___redundant_placeholder14
0while_while_cond_352472___redundant_placeholder24
0while_while_cond_352472___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
n
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_351762

inputs
identity?D
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
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
 *????2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?N
?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_352047

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
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
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
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
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
ones_like_1_
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mulc
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_1c
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
mul_2c
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:????????? 2
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
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????22
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????22

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????22

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????22

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
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????22	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????22
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????22
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????22
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????22
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
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
strided_slice/stack_2?
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
:?????????22

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????22	
Sigmoid}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
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
:?????????22

MatMul_5q
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_1`
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????22
mul_8}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
:?????????22

MatMul_6q
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:?????????22
Tanh^
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????22
mul_9_
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:?????????22
add_3}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	2?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
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
:?????????22

MatMul_7q
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:?????????22
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:?????????22
Tanh_1d
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:????????? :?????????2:?????????2:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?
n
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_352598

inputs
identity?D
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
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
 *????2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
r
,__inference_embedding_1_layer_call_fn_354208

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_3525652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%sequential_1_lstm_1_while_cond_351564D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3F
Bsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_351564___redundant_placeholder0\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_351564___redundant_placeholder1\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_351564___redundant_placeholder2\
Xsequential_1_lstm_1_while_sequential_1_lstm_1_while_cond_351564___redundant_placeholder3&
"sequential_1_lstm_1_while_identity
?
sequential_1/lstm_1/while/LessLess%sequential_1_lstm_1_while_placeholderBsequential_1_lstm_1_while_less_sequential_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/while/Less?
"sequential_1/lstm_1/while/IdentityIdentity"sequential_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?	
?
lstm_1_while_cond_353671*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_353671___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_353671___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_353671___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_353671___redundant_placeholder3
lstm_1_while_identity
?
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: 2
lstm_1/while/Lessr
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_1/while/Identity"7
lstm_1_while_identitylstm_1/while/Identity:output:0*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_353323

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_352997

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
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
:?????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout/Const?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Mul?
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shape?
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_1/dropout/random_uniform/RandomUniform?
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_cell_1/dropout/GreaterEqual/y?
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_1/dropout/GreaterEqual?
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Cast?
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_1/Const?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Mul?
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shape?
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform?
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_1/GreaterEqual/y?
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_1/GreaterEqual?
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Cast?
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_2/Const?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Mul?
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape?
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2?٨24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform?
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_2/GreaterEqual/y?
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_2/GreaterEqual?
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Cast?
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_3/Const?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Mul?
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shape?
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??<24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform?
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_3/GreaterEqual/y?
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_3/GreaterEqual?
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Cast?
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Mul_1|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape?
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like_1/Const?
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/ones_like_1
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_4/Const?
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Mul?
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_4/Shape?
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??%24
2lstm_cell_1/dropout_4/random_uniform/RandomUniform?
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_4/GreaterEqual/y?
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_4/GreaterEqual?
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Cast?
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Mul_1
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_5/Const?
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Mul?
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_5/Shape?
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_5/random_uniform/RandomUniform?
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_5/GreaterEqual/y?
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_5/GreaterEqual?
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Cast?
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Mul_1
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_6/Const?
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Mul?
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_6/Shape?
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??24
2lstm_cell_1/dropout_6/random_uniform/RandomUniform?
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_6/GreaterEqual/y?
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_6/GreaterEqual?
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Cast?
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Mul_1
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_7/Const?
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Mul?
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_7/Shape?
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2??e24
2lstm_cell_1/dropout_7/random_uniform/RandomUniform?
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_7/GreaterEqual/y?
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_7/GreaterEqual?
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Cast?
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Mul_1?
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_4?
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_5?
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_6?
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_7?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_8?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh?
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_9?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_352797*
condR
while_cond_352796*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
while_body_353116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/ones_like?
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape?
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_1/ones_like_1/Const?
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/ones_like_1?
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_4?
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_5?
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_6?
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_7?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_8?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_9?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_354784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/ones_like?
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape?
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_1/ones_like_1/Const?
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/ones_like_1?
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_4?
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_5?
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_6?
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_7?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_8?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_9?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_lstm_1_layer_call_fn_355591

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_3529972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_355624

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3532942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
while_body_355444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/ones_like?
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape?
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_1/ones_like_1/Const?
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/ones_like_1?
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_4?
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_5?
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_6?
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_7?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_8?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_9?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_1_layer_call_fn_353438
embedding_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3534232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameembedding_1_input
?
?
while_cond_354464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_354464___redundant_placeholder04
0while_while_cond_354464___redundant_placeholder14
0while_while_cond_354464___redundant_placeholder24
0while_while_cond_354464___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
??
?
!__inference__wrapped_model_351709
embedding_1_input4
0sequential_1_embedding_1_embedding_lookup_351443A
=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resourceC
?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource;
7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource7
3sequential_1_dense_1_matmul_readvariableop_resource8
4sequential_1_dense_1_biasadd_readvariableop_resource
identity??+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?)sequential_1/embedding_1/embedding_lookup?.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp?0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1?0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2?0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3?4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp?6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp?sequential_1/lstm_1/while?
sequential_1/embedding_1/CastCastembedding_1_input*

DstT0*

SrcT0*(
_output_shapes
:??????????2
sequential_1/embedding_1/Cast?
)sequential_1/embedding_1/embedding_lookupResourceGather0sequential_1_embedding_1_embedding_lookup_351443!sequential_1/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@sequential_1/embedding_1/embedding_lookup/351443*,
_output_shapes
:?????????? *
dtype02+
)sequential_1/embedding_1/embedding_lookup?
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@sequential_1/embedding_1/embedding_lookup/351443*,
_output_shapes
:?????????? 24
2sequential_1/embedding_1/embedding_lookup/Identity?
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 26
4sequential_1/embedding_1/embedding_lookup/Identity_1?
)sequential_1/spatial_dropout1d_1/IdentityIdentity=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2+
)sequential_1/spatial_dropout1d_1/Identity?
sequential_1/lstm_1/ShapeShape2sequential_1/spatial_dropout1d_1/Identity:output:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape?
'sequential_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_1/lstm_1/strided_slice/stack?
)sequential_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_1?
)sequential_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_1/lstm_1/strided_slice/stack_2?
!sequential_1/lstm_1/strided_sliceStridedSlice"sequential_1/lstm_1/Shape:output:00sequential_1/lstm_1/strided_slice/stack:output:02sequential_1/lstm_1/strided_slice/stack_1:output:02sequential_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_1/lstm_1/strided_slice?
sequential_1/lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22!
sequential_1/lstm_1/zeros/mul/y?
sequential_1/lstm_1/zeros/mulMul*sequential_1/lstm_1/strided_slice:output:0(sequential_1/lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/zeros/mul?
 sequential_1/lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_1/lstm_1/zeros/Less/y?
sequential_1/lstm_1/zeros/LessLess!sequential_1/lstm_1/zeros/mul:z:0)sequential_1/lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_1/lstm_1/zeros/Less?
"sequential_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22$
"sequential_1/lstm_1/zeros/packed/1?
 sequential_1/lstm_1/zeros/packedPack*sequential_1/lstm_1/strided_slice:output:0+sequential_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_1/lstm_1/zeros/packed?
sequential_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_1/lstm_1/zeros/Const?
sequential_1/lstm_1/zerosFill)sequential_1/lstm_1/zeros/packed:output:0(sequential_1/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????22
sequential_1/lstm_1/zeros?
!sequential_1/lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22#
!sequential_1/lstm_1/zeros_1/mul/y?
sequential_1/lstm_1/zeros_1/mulMul*sequential_1/lstm_1/strided_slice:output:0*sequential_1/lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/zeros_1/mul?
"sequential_1/lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_1/lstm_1/zeros_1/Less/y?
 sequential_1/lstm_1/zeros_1/LessLess#sequential_1/lstm_1/zeros_1/mul:z:0+sequential_1/lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_1/lstm_1/zeros_1/Less?
$sequential_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22&
$sequential_1/lstm_1/zeros_1/packed/1?
"sequential_1/lstm_1/zeros_1/packedPack*sequential_1/lstm_1/strided_slice:output:0-sequential_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/lstm_1/zeros_1/packed?
!sequential_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_1/lstm_1/zeros_1/Const?
sequential_1/lstm_1/zeros_1Fill+sequential_1/lstm_1/zeros_1/packed:output:0*sequential_1/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????22
sequential_1/lstm_1/zeros_1?
"sequential_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_1/lstm_1/transpose/perm?
sequential_1/lstm_1/transpose	Transpose2sequential_1/spatial_dropout1d_1/Identity:output:0+sequential_1/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
sequential_1/lstm_1/transpose?
sequential_1/lstm_1/Shape_1Shape!sequential_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:2
sequential_1/lstm_1/Shape_1?
)sequential_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_1/stack?
+sequential_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_1?
+sequential_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_1/stack_2?
#sequential_1/lstm_1/strided_slice_1StridedSlice$sequential_1/lstm_1/Shape_1:output:02sequential_1/lstm_1/strided_slice_1/stack:output:04sequential_1/lstm_1/strided_slice_1/stack_1:output:04sequential_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_1?
/sequential_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_1/lstm_1/TensorArrayV2/element_shape?
!sequential_1/lstm_1/TensorArrayV2TensorListReserve8sequential_1/lstm_1/TensorArrayV2/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_1/lstm_1/TensorArrayV2?
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2K
Isequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_1/transpose:y:0Rsequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor?
)sequential_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_1/lstm_1/strided_slice_2/stack?
+sequential_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_1?
+sequential_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_2/stack_2?
#sequential_1/lstm_1/strided_slice_2StridedSlice!sequential_1/lstm_1/transpose:y:02sequential_1/lstm_1/strided_slice_2/stack:output:04sequential_1/lstm_1/strided_slice_2/stack_1:output:04sequential_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_2?
/sequential_1/lstm_1/lstm_cell_1/ones_like/ShapeShape,sequential_1/lstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_1/lstm_1/lstm_cell_1/ones_like/Shape?
/sequential_1/lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_1/lstm_1/lstm_cell_1/ones_like/Const?
)sequential_1/lstm_1/lstm_cell_1/ones_likeFill8sequential_1/lstm_1/lstm_cell_1/ones_like/Shape:output:08sequential_1/lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_1/lstm_1/lstm_cell_1/ones_like?
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/ShapeShape"sequential_1/lstm_1/zeros:output:0*
T0*
_output_shapes
:23
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/Shape?
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1sequential_1/lstm_1/lstm_cell_1/ones_like_1/Const?
+sequential_1/lstm_1/lstm_cell_1/ones_like_1Fill:sequential_1/lstm_1/lstm_cell_1/ones_like_1/Shape:output:0:sequential_1/lstm_1/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/lstm_cell_1/ones_like_1?
#sequential_1/lstm_1/lstm_cell_1/mulMul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2%
#sequential_1/lstm_1/lstm_cell_1/mul?
%sequential_1/lstm_1/lstm_cell_1/mul_1Mul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_1/lstm_1/lstm_cell_1/mul_1?
%sequential_1/lstm_1/lstm_cell_1/mul_2Mul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_1/lstm_1/lstm_cell_1/mul_2?
%sequential_1/lstm_1/lstm_cell_1/mul_3Mul,sequential_1/lstm_1/strided_slice_2:output:02sequential_1/lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2'
%sequential_1/lstm_1/lstm_cell_1/mul_3?
%sequential_1/lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/lstm_1/lstm_cell_1/Const?
/sequential_1/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_1/lstm_1/lstm_cell_1/split/split_dim?
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype026
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp?
%sequential_1/lstm_1/lstm_cell_1/splitSplit8sequential_1/lstm_1/lstm_cell_1/split/split_dim:output:0<sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2'
%sequential_1/lstm_1/lstm_cell_1/split?
&sequential_1/lstm_1/lstm_cell_1/MatMulMatMul'sequential_1/lstm_1/lstm_cell_1/mul:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22(
&sequential_1/lstm_1/lstm_cell_1/MatMul?
(sequential_1/lstm_1/lstm_cell_1/MatMul_1MatMul)sequential_1/lstm_1/lstm_cell_1/mul_1:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_1?
(sequential_1/lstm_1/lstm_cell_1/MatMul_2MatMul)sequential_1/lstm_1/lstm_cell_1/mul_2:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_2?
(sequential_1/lstm_1/lstm_cell_1/MatMul_3MatMul)sequential_1/lstm_1/lstm_cell_1/mul_3:z:0.sequential_1/lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_3?
'sequential_1/lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/lstm_1/lstm_cell_1/Const_1?
1sequential_1/lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_1/lstm_1/lstm_cell_1/split_1/split_dim?
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp?
'sequential_1/lstm_1/lstm_cell_1/split_1Split:sequential_1/lstm_1/lstm_cell_1/split_1/split_dim:output:0>sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2)
'sequential_1/lstm_1/lstm_cell_1/split_1?
'sequential_1/lstm_1/lstm_cell_1/BiasAddBiasAdd0sequential_1/lstm_1/lstm_cell_1/MatMul:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22)
'sequential_1/lstm_1/lstm_cell_1/BiasAdd?
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_1BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_1:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_1?
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_2BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_2:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_2?
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_3BiasAdd2sequential_1/lstm_1/lstm_cell_1/MatMul_3:product:00sequential_1/lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22+
)sequential_1/lstm_1/lstm_cell_1/BiasAdd_3?
%sequential_1/lstm_1/lstm_cell_1/mul_4Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/mul_4?
%sequential_1/lstm_1/lstm_cell_1/mul_5Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/mul_5?
%sequential_1/lstm_1/lstm_cell_1/mul_6Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/mul_6?
%sequential_1/lstm_1/lstm_cell_1/mul_7Mul"sequential_1/lstm_1/zeros:output:04sequential_1/lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/mul_7?
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype020
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp?
3sequential_1/lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_1/lstm_1/lstm_cell_1/strided_slice/stack?
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1?
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2?
-sequential_1/lstm_1/lstm_cell_1/strided_sliceStridedSlice6sequential_1/lstm_1/lstm_cell_1/ReadVariableOp:value:0<sequential_1/lstm_1/lstm_cell_1/strided_slice/stack:output:0>sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_1:output:0>sequential_1/lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2/
-sequential_1/lstm_1/lstm_cell_1/strided_slice?
(sequential_1/lstm_1/lstm_cell_1/MatMul_4MatMul)sequential_1/lstm_1/lstm_cell_1/mul_4:z:06sequential_1/lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_4?
#sequential_1/lstm_1/lstm_cell_1/addAddV20sequential_1/lstm_1/lstm_cell_1/BiasAdd:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22%
#sequential_1/lstm_1/lstm_cell_1/add?
'sequential_1/lstm_1/lstm_cell_1/SigmoidSigmoid'sequential_1/lstm_1/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22)
'sequential_1/lstm_1/lstm_cell_1/Sigmoid?
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1?
5sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2?
/sequential_1/lstm_1/lstm_cell_1/strided_slice_1StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_1:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_1?
(sequential_1/lstm_1/lstm_cell_1/MatMul_5MatMul)sequential_1/lstm_1/lstm_cell_1/mul_5:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_5?
%sequential_1/lstm_1/lstm_cell_1/add_1AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_1:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/add_1?
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid)sequential_1/lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22+
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_1?
%sequential_1/lstm_1/lstm_cell_1/mul_8Mul-sequential_1/lstm_1/lstm_cell_1/Sigmoid_1:y:0$sequential_1/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/mul_8?
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2?
5sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2?
/sequential_1/lstm_1/lstm_cell_1/strided_slice_2StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_2:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_2?
(sequential_1/lstm_1/lstm_cell_1/MatMul_6MatMul)sequential_1/lstm_1/lstm_cell_1/mul_6:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_6?
%sequential_1/lstm_1/lstm_cell_1/add_2AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_2:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/add_2?
$sequential_1/lstm_1/lstm_cell_1/TanhTanh)sequential_1/lstm_1/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22&
$sequential_1/lstm_1/lstm_cell_1/Tanh?
%sequential_1/lstm_1/lstm_cell_1/mul_9Mul+sequential_1/lstm_1/lstm_cell_1/Sigmoid:y:0(sequential_1/lstm_1/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/mul_9?
%sequential_1/lstm_1/lstm_cell_1/add_3AddV2)sequential_1/lstm_1/lstm_cell_1/mul_8:z:0)sequential_1/lstm_1/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/add_3?
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype022
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3?
5sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1?
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2?
/sequential_1/lstm_1/lstm_cell_1/strided_slice_3StridedSlice8sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_3:value:0>sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:0@sequential_1/lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask21
/sequential_1/lstm_1/lstm_cell_1/strided_slice_3?
(sequential_1/lstm_1/lstm_cell_1/MatMul_7MatMul)sequential_1/lstm_1/lstm_cell_1/mul_7:z:08sequential_1/lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22*
(sequential_1/lstm_1/lstm_cell_1/MatMul_7?
%sequential_1/lstm_1/lstm_cell_1/add_4AddV22sequential_1/lstm_1/lstm_cell_1/BiasAdd_3:output:02sequential_1/lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22'
%sequential_1/lstm_1/lstm_cell_1/add_4?
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid)sequential_1/lstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22+
)sequential_1/lstm_1/lstm_cell_1/Sigmoid_2?
&sequential_1/lstm_1/lstm_cell_1/Tanh_1Tanh)sequential_1/lstm_1/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22(
&sequential_1/lstm_1/lstm_cell_1/Tanh_1?
&sequential_1/lstm_1/lstm_cell_1/mul_10Mul-sequential_1/lstm_1/lstm_cell_1/Sigmoid_2:y:0*sequential_1/lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22(
&sequential_1/lstm_1/lstm_cell_1/mul_10?
1sequential_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   23
1sequential_1/lstm_1/TensorArrayV2_1/element_shape?
#sequential_1/lstm_1/TensorArrayV2_1TensorListReserve:sequential_1/lstm_1/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_1/lstm_1/TensorArrayV2_1v
sequential_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_1/lstm_1/time?
,sequential_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,sequential_1/lstm_1/while/maximum_iterations?
&sequential_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_1/lstm_1/while/loop_counter?
sequential_1/lstm_1/whileWhile/sequential_1/lstm_1/while/loop_counter:output:05sequential_1/lstm_1/while/maximum_iterations:output:0!sequential_1/lstm_1/time:output:0,sequential_1/lstm_1/TensorArrayV2_1:handle:0"sequential_1/lstm_1/zeros:output:0$sequential_1/lstm_1/zeros_1:output:0,sequential_1/lstm_1/strided_slice_1:output:0Ksequential_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_1_lstm_1_lstm_cell_1_split_readvariableop_resource?sequential_1_lstm_1_lstm_cell_1_split_1_readvariableop_resource7sequential_1_lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_1_while_body_351565*1
cond)R'
%sequential_1_lstm_1_while_cond_351564*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
sequential_1/lstm_1/while?
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2F
Dsequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_1/while:output:3Msequential_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype028
6sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack?
)sequential_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)sequential_1/lstm_1/strided_slice_3/stack?
+sequential_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_1/lstm_1/strided_slice_3/stack_1?
+sequential_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_1/lstm_1/strided_slice_3/stack_2?
#sequential_1/lstm_1/strided_slice_3StridedSlice?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_1/strided_slice_3/stack:output:04sequential_1/lstm_1/strided_slice_3/stack_1:output:04sequential_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2%
#sequential_1/lstm_1/strided_slice_3?
$sequential_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_1/lstm_1/transpose_1/perm?
sequential_1/lstm_1/transpose_1	Transpose?sequential_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22!
sequential_1/lstm_1/transpose_1?
sequential_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_1/lstm_1/runtime?
sequential_1/dropout_1/IdentityIdentity,sequential_1/lstm_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22!
sequential_1/dropout_1/Identity?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMul(sequential_1/dropout_1/Identity:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/SigmoidSigmoid%sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_1/dense_1/Sigmoid?
IdentityIdentity sequential_1/dense_1/Sigmoid:y:0,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*^sequential_1/embedding_1/embedding_lookup/^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp1^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_11^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_21^sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_35^sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp7^sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp^sequential_1/lstm_1/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2`
.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp.sequential_1/lstm_1/lstm_cell_1/ReadVariableOp2d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_10sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_12d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_20sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_22d
0sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_30sequential_1/lstm_1/lstm_cell_1/ReadVariableOp_32l
4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp4sequential_1/lstm_1/lstm_cell_1/split/ReadVariableOp2p
6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp6sequential_1/lstm_1/lstm_cell_1/split_1/ReadVariableOp26
sequential_1/lstm_1/whilesequential_1/lstm_1/while:[ W
(
_output_shapes
:??????????
+
_user_specified_nameembedding_1_input
?
?
while_cond_354783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_354783___redundant_placeholder04
0while_while_cond_354783___redundant_placeholder14
0while_while_cond_354783___redundant_placeholder24
0while_while_cond_354783___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?D
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_352410

inputs
lstm_cell_1_352328
lstm_cell_1_352330
lstm_cell_1_352332
identity??#lstm_cell_1/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_352328lstm_cell_1_352330lstm_cell_1_352332*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_3519632%
#lstm_cell_1/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_352328lstm_cell_1_352330lstm_cell_1_352332*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_352341*
condR
while_cond_352340*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_1/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????????????? :::2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
}
(__inference_dense_1_layer_call_fn_355649

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3533232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_355124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355124___redundant_placeholder04
0while_while_cond_355124___redundant_placeholder14
0while_while_cond_355124___redundant_placeholder24
0while_while_cond_355124___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
m
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_351772

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
while_cond_355443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355443___redundant_placeholder04
0while_while_cond_355443___redundant_placeholder14
0while_while_cond_355443___redundant_placeholder24
0while_while_cond_355443___redundant_placeholder3
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
@: : : : :?????????2:?????????2: ::::: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_355640

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_353294

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????22
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_353400
embedding_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3533852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameembedding_1_input
??
?
B__inference_lstm_1_layer_call_and_return_conditional_losses_355325

inputs-
)lstm_cell_1_split_readvariableop_resource/
+lstm_cell_1_split_1_readvariableop_resource'
#lstm_cell_1_readvariableop_resource
identity??lstm_cell_1/ReadVariableOp?lstm_cell_1/ReadVariableOp_1?lstm_cell_1/ReadVariableOp_2?lstm_cell_1/ReadVariableOp_3? lstm_cell_1/split/ReadVariableOp?"lstm_cell_1/split_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
zeros/packed/1?
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
:?????????22
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
B :?2
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
zeros_1/packed/1?
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
:?????????22	
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
:?????????? 2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
strided_slice_2?
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like/Shape
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like/Const?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/ones_like{
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout/Const?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Mul?
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout/Shape?
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???22
0lstm_cell_1/dropout/random_uniform/RandomUniform?
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_cell_1/dropout/GreaterEqual/y?
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2"
 lstm_cell_1/dropout/GreaterEqual?
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Cast?
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout/Mul_1
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_1/Const?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Mul?
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_1/Shape?
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_1/random_uniform/RandomUniform?
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_1/GreaterEqual/y?
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_1/GreaterEqual?
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Cast?
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_1/Mul_1
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_2/Const?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Mul?
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_2/Shape?
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_2/random_uniform/RandomUniform?
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_2/GreaterEqual/y?
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_2/GreaterEqual?
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Cast?
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_2/Mul_1
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_3/Const?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Mul?
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_3/Shape?
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_3/random_uniform/RandomUniform?
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_3/GreaterEqual/y?
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2$
"lstm_cell_1/dropout_3/GreaterEqual?
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Cast?
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/dropout_3/Mul_1|
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_1/ones_like_1/Shape?
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_1/ones_like_1/Const?
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/ones_like_1
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_4/Const?
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Mul?
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_4/Shape?
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_4/random_uniform/RandomUniform?
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_4/GreaterEqual/y?
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_4/GreaterEqual?
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Cast?
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_4/Mul_1
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_5/Const?
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Mul?
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_5/Shape?
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_5/random_uniform/RandomUniform?
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_5/GreaterEqual/y?
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_5/GreaterEqual?
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Cast?
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_5/Mul_1
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_6/Const?
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Mul?
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_6/Shape?
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_6/random_uniform/RandomUniform?
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_6/GreaterEqual/y?
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_6/GreaterEqual?
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Cast?
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_6/Mul_1
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lstm_cell_1/dropout_7/Const?
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Mul?
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_1/dropout_7/Shape?
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???24
2lstm_cell_1/dropout_7/random_uniform/RandomUniform?
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2&
$lstm_cell_1/dropout_7/GreaterEqual/y?
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22$
"lstm_cell_1/dropout_7/GreaterEqual?
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Cast?
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/dropout_7/Mul_1?
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul?
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_1?
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_2?
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
lstm_cell_1/mul_3h
lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const|
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/split/split_dim?
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02"
 lstm_cell_1/split/ReadVariableOp?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_cell_1/split?
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul?
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_1?
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_2?
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_3l
lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_1/Const_1?
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_1/split_1/split_dim?
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_1/split_1/ReadVariableOp?
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_cell_1/split_1?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd?
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_1?
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_2?
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_cell_1/BiasAdd_3?
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_4?
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_5?
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_6?
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_7?
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp?
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_1/strided_slice/stack?
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice/stack_1?
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_1/strided_slice/stack_2?
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice?
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_4?
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add|
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid?
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_1?
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2#
!lstm_cell_1/strided_slice_1/stack?
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2%
#lstm_cell_1/strided_slice_1/stack_1?
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_1/stack_2?
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_1?
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_5?
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_1?
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_1?
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_8?
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_2?
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2#
!lstm_cell_1/strided_slice_2/stack?
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2%
#lstm_cell_1/strided_slice_2/stack_1?
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_2/stack_2?
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_2?
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_6?
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_2u
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh?
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_9?
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_3?
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02
lstm_cell_1/ReadVariableOp_3?
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell_1/strided_slice_3/stack?
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_1/strided_slice_3/stack_1?
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_1/strided_slice_3/stack_2?
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2
lstm_cell_1/strided_slice_3?
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/MatMul_7?
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/add_4?
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Sigmoid_2y
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/Tanh_1?
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_cell_1/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_355125*
condR
while_cond_355124*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? :::28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
while_body_352797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_1_split_readvariableop_resource_07
3while_lstm_cell_1_split_1_readvariableop_resource_0/
+while_lstm_cell_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_1_split_readvariableop_resource5
1while_lstm_cell_1_split_1_readvariableop_resource-
)while_lstm_cell_1_readvariableop_resource?? while/lstm_cell_1/ReadVariableOp?"while/lstm_cell_1/ReadVariableOp_1?"while/lstm_cell_1/ReadVariableOp_2?"while/lstm_cell_1/ReadVariableOp_3?&while/lstm_cell_1/split/ReadVariableOp?(while/lstm_cell_1/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/ones_like/Shape?
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell_1/ones_like/Const?
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/ones_like?
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2!
while/lstm_cell_1/dropout/Const?
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/dropout/Mul?
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_1/dropout/Shape?
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??728
6while/lstm_cell_1/dropout/random_uniform/RandomUniform?
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(while/lstm_cell_1/dropout/GreaterEqual/y?
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&while/lstm_cell_1/dropout/GreaterEqual?
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
while/lstm_cell_1/dropout/Cast?
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout/Mul_1?
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_1/Const?
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_1/Mul?
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_1/Shape?
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_1/GreaterEqual/y?
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_1/GreaterEqual?
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_1/Cast?
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_1/Mul_1?
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_2/Const?
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_2/Mul?
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_2/Shape?
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2??s2:
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_2/GreaterEqual/y?
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_2/GreaterEqual?
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_2/Cast?
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_2/Mul_1?
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_3/Const?
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:????????? 2!
while/lstm_cell_1/dropout_3/Mul?
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_3/Shape?
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_3/GreaterEqual/y?
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2*
(while/lstm_cell_1/dropout_3/GreaterEqual?
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2"
 while/lstm_cell_1/dropout_3/Cast?
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:????????? 2#
!while/lstm_cell_1/dropout_3/Mul_1?
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_1/ones_like_1/Shape?
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#while/lstm_cell_1/ones_like_1/Const?
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/ones_like_1?
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_4/Const?
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_4/Mul?
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_4/Shape?
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_4/GreaterEqual/y?
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_4/GreaterEqual?
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_4/Cast?
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_4/Mul_1?
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_5/Const?
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_5/Mul?
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_5/Shape?
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_5/GreaterEqual/y?
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_5/GreaterEqual?
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_5/Cast?
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_5/Mul_1?
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_6/Const?
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_6/Mul?
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_6/Shape?
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2???2:
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_6/GreaterEqual/y?
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_6/GreaterEqual?
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_6/Cast?
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_6/Mul_1?
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!while/lstm_cell_1/dropout_7/Const?
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????22!
while/lstm_cell_1/dropout_7/Mul?
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_1/dropout_7/Shape?
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*
seed???)*
seed2ڇ?2:
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniform?
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2,
*while/lstm_cell_1/dropout_7/GreaterEqual/y?
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????22*
(while/lstm_cell_1/dropout_7/GreaterEqual?
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????22"
 while/lstm_cell_1/dropout_7/Cast?
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????22#
!while/lstm_cell_1/dropout_7/Mul_1?
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul?
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_1?
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_2?
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2
while/lstm_cell_1/mul_3t
while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const?
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_1/split/split_dim?
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02(
&while/lstm_cell_1/split/ReadVariableOp?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
while/lstm_cell_1/split?
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul?
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_1?
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_2?
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_3x
while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_1/Const_1?
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_1/split_1/split_dim?
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_1/split_1/ReadVariableOp?
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
while/lstm_cell_1/split_1?
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd?
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_1?
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_2?
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/BiasAdd_3?
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_4?
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_5?
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_6?
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_7?
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02"
 while/lstm_cell_1/ReadVariableOp?
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_1/strided_slice/stack?
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice/stack_1?
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_1/strided_slice/stack_2?
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2!
while/lstm_cell_1/strided_slice?
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_4?
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add?
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid?
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_1?
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2)
'while/lstm_cell_1/strided_slice_1/stack?
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2+
)while/lstm_cell_1/strided_slice_1/stack_1?
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_1/stack_2?
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_1?
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_5?
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_1?
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_1?
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_8?
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_2?
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2)
'while/lstm_cell_1/strided_slice_2/stack?
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2+
)while/lstm_cell_1/strided_slice_2/stack_1?
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_2/stack_2?
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_2?
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_6?
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_2?
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh?
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_9?
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_3?
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype02$
"while/lstm_cell_1/ReadVariableOp_3?
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell_1/strided_slice_3/stack?
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_1/strided_slice_3/stack_1?
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_1/strided_slice_3/stack_2?
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2#
!while/lstm_cell_1/strided_slice_3?
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/MatMul_7?
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/add_4?
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Sigmoid_2?
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/Tanh_1?
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
while/lstm_cell_1/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?	
?
G__inference_embedding_1_layer_call_and_return_conditional_losses_354201

inputs
embedding_lookup_354195
identity??embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_354195Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/354195*,
_output_shapes
:?????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/354195*,
_output_shapes
:?????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_354157

inputs'
#embedding_1_embedding_lookup_3538914
0lstm_1_lstm_cell_1_split_readvariableop_resource6
2lstm_1_lstm_cell_1_split_1_readvariableop_resource.
*lstm_1_lstm_cell_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding_1/embedding_lookup?!lstm_1/lstm_cell_1/ReadVariableOp?#lstm_1/lstm_cell_1/ReadVariableOp_1?#lstm_1/lstm_cell_1/ReadVariableOp_2?#lstm_1/lstm_cell_1/ReadVariableOp_3?'lstm_1/lstm_cell_1/split/ReadVariableOp?)lstm_1/lstm_cell_1/split_1/ReadVariableOp?lstm_1/whilev
embedding_1/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding_1/Cast?
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_353891embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/353891*,
_output_shapes
:?????????? *
dtype02
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/353891*,
_output_shapes
:?????????? 2'
%embedding_1/embedding_lookup/Identity?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2)
'embedding_1/embedding_lookup/Identity_1?
spatial_dropout1d_1/IdentityIdentity0embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2
spatial_dropout1d_1/Identityq
lstm_1/ShapeShape%spatial_dropout1d_1/Identity:output:0*
T0*
_output_shapes
:2
lstm_1/Shape?
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice/stack?
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_1?
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_1/strided_slice/stack_2?
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slicej
lstm_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros/mul/y?
lstm_1/zeros/mulMullstm_1/strided_slice:output:0lstm_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/mulm
lstm_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros/Less/y?
lstm_1/zeros/LessLesslstm_1/zeros/mul:z:0lstm_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros/Lessp
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros/packed/1?
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros/packedm
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros/Const?
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/zerosn
lstm_1/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros_1/mul/y?
lstm_1/zeros_1/mulMullstm_1/strided_slice:output:0lstm_1/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/mulq
lstm_1/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_1/zeros_1/Less/y?
lstm_1/zeros_1/LessLesslstm_1/zeros_1/mul:z:0lstm_1/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_1/zeros_1/Lesst
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
lstm_1/zeros_1/packed/1?
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_1/zeros_1/packedq
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/zeros_1/Const?
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/zeros_1?
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose/perm?
lstm_1/transpose	Transpose%spatial_dropout1d_1/Identity:output:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:?????????? 2
lstm_1/transposed
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:2
lstm_1/Shape_1?
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_1/stack?
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_1?
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_1/stack_2?
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_1/strided_slice_1?
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_1/TensorArrayV2/element_shape?
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2?
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2>
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_1/TensorArrayUnstack/TensorListFromTensor?
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_1/strided_slice_2/stack?
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_1?
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_2/stack_2?
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:????????? *
shrink_axis_mask2
lstm_1/strided_slice_2?
"lstm_1/lstm_cell_1/ones_like/ShapeShapelstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_1/lstm_cell_1/ones_like/Shape?
"lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm_1/lstm_cell_1/ones_like/Const?
lstm_1/lstm_cell_1/ones_likeFill+lstm_1/lstm_cell_1/ones_like/Shape:output:0+lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/ones_like?
$lstm_1/lstm_cell_1/ones_like_1/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_1/lstm_cell_1/ones_like_1/Shape?
$lstm_1/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm_1/lstm_cell_1/ones_like_1/Const?
lstm_1/lstm_cell_1/ones_like_1Fill-lstm_1/lstm_cell_1/ones_like_1/Shape:output:0-lstm_1/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????22 
lstm_1/lstm_cell_1/ones_like_1?
lstm_1/lstm_cell_1/mulMullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul?
lstm_1/lstm_cell_1/mul_1Mullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul_1?
lstm_1/lstm_cell_1/mul_2Mullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul_2?
lstm_1/lstm_cell_1/mul_3Mullstm_1/strided_slice_2:output:0%lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2
lstm_1/lstm_cell_1/mul_3v
lstm_1/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const?
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_1/lstm_cell_1/split/split_dim?
'lstm_1/lstm_cell_1/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	 ?*
dtype02)
'lstm_1/lstm_cell_1/split/ReadVariableOp?
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0/lstm_1/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2
lstm_1/lstm_cell_1/split?
lstm_1/lstm_cell_1/MatMulMatMullstm_1/lstm_cell_1/mul:z:0!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul?
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/lstm_cell_1/mul_1:z:0!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_1?
lstm_1/lstm_cell_1/MatMul_2MatMullstm_1/lstm_cell_1/mul_2:z:0!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_2?
lstm_1/lstm_cell_1/MatMul_3MatMullstm_1/lstm_cell_1/mul_3:z:0!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_3z
lstm_1/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_1/lstm_cell_1/Const_1?
$lstm_1/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_1/lstm_cell_1/split_1/split_dim?
)lstm_1/lstm_cell_1/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_1/lstm_cell_1/split_1/ReadVariableOp?
lstm_1/lstm_cell_1/split_1Split-lstm_1/lstm_cell_1/split_1/split_dim:output:01lstm_1/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2
lstm_1/lstm_cell_1/split_1?
lstm_1/lstm_cell_1/BiasAddBiasAdd#lstm_1/lstm_cell_1/MatMul:product:0#lstm_1/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd?
lstm_1/lstm_cell_1/BiasAdd_1BiasAdd%lstm_1/lstm_cell_1/MatMul_1:product:0#lstm_1/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd_1?
lstm_1/lstm_cell_1/BiasAdd_2BiasAdd%lstm_1/lstm_cell_1/MatMul_2:product:0#lstm_1/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd_2?
lstm_1/lstm_cell_1/BiasAdd_3BiasAdd%lstm_1/lstm_cell_1/MatMul_3:product:0#lstm_1/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/BiasAdd_3?
lstm_1/lstm_cell_1/mul_4Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_4?
lstm_1/lstm_cell_1/mul_5Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_5?
lstm_1/lstm_cell_1/mul_6Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_6?
lstm_1/lstm_cell_1/mul_7Mullstm_1/zeros:output:0'lstm_1/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_7?
!lstm_1/lstm_cell_1/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02#
!lstm_1/lstm_cell_1/ReadVariableOp?
&lstm_1/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_1/lstm_cell_1/strided_slice/stack?
(lstm_1/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_1/lstm_cell_1/strided_slice/stack_1?
(lstm_1/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_1/lstm_cell_1/strided_slice/stack_2?
 lstm_1/lstm_cell_1/strided_sliceStridedSlice)lstm_1/lstm_cell_1/ReadVariableOp:value:0/lstm_1/lstm_cell_1/strided_slice/stack:output:01lstm_1/lstm_cell_1/strided_slice/stack_1:output:01lstm_1/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2"
 lstm_1/lstm_cell_1/strided_slice?
lstm_1/lstm_cell_1/MatMul_4MatMullstm_1/lstm_cell_1/mul_4:z:0)lstm_1/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_4?
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/BiasAdd:output:0%lstm_1/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add?
lstm_1/lstm_cell_1/SigmoidSigmoidlstm_1/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Sigmoid?
#lstm_1/lstm_cell_1/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_1?
(lstm_1/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2*
(lstm_1/lstm_cell_1/strided_slice_1/stack?
*lstm_1/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_1?
*lstm_1/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_1/stack_2?
"lstm_1/lstm_cell_1/strided_slice_1StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_1:value:01lstm_1/lstm_cell_1/strided_slice_1/stack:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_1?
lstm_1/lstm_cell_1/MatMul_5MatMullstm_1/lstm_cell_1/mul_5:z:0+lstm_1/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_5?
lstm_1/lstm_cell_1/add_1AddV2%lstm_1/lstm_cell_1/BiasAdd_1:output:0%lstm_1/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_1?
lstm_1/lstm_cell_1/Sigmoid_1Sigmoidlstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Sigmoid_1?
lstm_1/lstm_cell_1/mul_8Mul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_8?
#lstm_1/lstm_cell_1/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_2?
(lstm_1/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2*
(lstm_1/lstm_cell_1/strided_slice_2/stack?
*lstm_1/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_1?
*lstm_1/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_2/stack_2?
"lstm_1/lstm_cell_1/strided_slice_2StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_2:value:01lstm_1/lstm_cell_1/strided_slice_2/stack:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_2?
lstm_1/lstm_cell_1/MatMul_6MatMullstm_1/lstm_cell_1/mul_6:z:0+lstm_1/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_6?
lstm_1/lstm_cell_1/add_2AddV2%lstm_1/lstm_cell_1/BiasAdd_2:output:0%lstm_1/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_2?
lstm_1/lstm_cell_1/TanhTanhlstm_1/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Tanh?
lstm_1/lstm_cell_1/mul_9Mullstm_1/lstm_cell_1/Sigmoid:y:0lstm_1/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_9?
lstm_1/lstm_cell_1/add_3AddV2lstm_1/lstm_cell_1/mul_8:z:0lstm_1/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_3?
#lstm_1/lstm_cell_1/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_1_readvariableop_resource*
_output_shapes
:	2?*
dtype02%
#lstm_1/lstm_cell_1/ReadVariableOp_3?
(lstm_1/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(lstm_1/lstm_cell_1/strided_slice_3/stack?
*lstm_1/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_1?
*lstm_1/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_1/lstm_cell_1/strided_slice_3/stack_2?
"lstm_1/lstm_cell_1/strided_slice_3StridedSlice+lstm_1/lstm_cell_1/ReadVariableOp_3:value:01lstm_1/lstm_cell_1/strided_slice_3/stack:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask2$
"lstm_1/lstm_cell_1/strided_slice_3?
lstm_1/lstm_cell_1/MatMul_7MatMullstm_1/lstm_cell_1/mul_7:z:0+lstm_1/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/MatMul_7?
lstm_1/lstm_cell_1/add_4AddV2%lstm_1/lstm_cell_1/BiasAdd_3:output:0%lstm_1/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/add_4?
lstm_1/lstm_cell_1/Sigmoid_2Sigmoidlstm_1/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Sigmoid_2?
lstm_1/lstm_cell_1/Tanh_1Tanhlstm_1/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/Tanh_1?
lstm_1/lstm_cell_1/mul_10Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22
lstm_1/lstm_cell_1/mul_10?
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   2&
$lstm_1/TensorArrayV2_1/element_shape?
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_1/TensorArrayV2_1\
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/time?
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_1/while/maximum_iterationsx
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_1/while/loop_counter?
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_1_split_readvariableop_resource2lstm_1_lstm_cell_1_split_1_readvariableop_resource*lstm_1_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_1_while_body_354013*$
condR
lstm_1_while_cond_354012*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations 2
lstm_1/while?
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   29
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????2*
element_dtype02+
)lstm_1/TensorArrayV2Stack/TensorListStack?
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_1/strided_slice_3/stack?
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_1/strided_slice_3/stack_1?
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_1/strided_slice_3/stack_2?
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask2
lstm_1/strided_slice_3?
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_1/transpose_1/perm?
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????22
lstm_1/transpose_1t
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_1/runtime?
dropout_1/IdentityIdentitylstm_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????22
dropout_1/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoid?
IdentityIdentitydense_1/Sigmoid:y:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding_1/embedding_lookup"^lstm_1/lstm_cell_1/ReadVariableOp$^lstm_1/lstm_cell_1/ReadVariableOp_1$^lstm_1/lstm_cell_1/ReadVariableOp_2$^lstm_1/lstm_cell_1/ReadVariableOp_3(^lstm_1/lstm_cell_1/split/ReadVariableOp*^lstm_1/lstm_cell_1/split_1/ReadVariableOp^lstm_1/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2F
!lstm_1/lstm_cell_1/ReadVariableOp!lstm_1/lstm_cell_1/ReadVariableOp2J
#lstm_1/lstm_cell_1/ReadVariableOp_1#lstm_1/lstm_cell_1/ReadVariableOp_12J
#lstm_1/lstm_cell_1/ReadVariableOp_2#lstm_1/lstm_cell_1/ReadVariableOp_22J
#lstm_1/lstm_cell_1/ReadVariableOp_3#lstm_1/lstm_cell_1/ReadVariableOp_32R
'lstm_1/lstm_cell_1/split/ReadVariableOp'lstm_1/lstm_cell_1/split/ReadVariableOp2V
)lstm_1/lstm_cell_1/split_1/ReadVariableOp)lstm_1/lstm_cell_1/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_354191

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_3534232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_353465
embedding_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_3517092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameembedding_1_input
??
?
%sequential_1_lstm_1_while_body_351565D
@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counterJ
Fsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations)
%sequential_1_lstm_1_while_placeholder+
'sequential_1_lstm_1_while_placeholder_1+
'sequential_1_lstm_1_while_placeholder_2+
'sequential_1_lstm_1_while_placeholder_3C
?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0
{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0I
Esequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0K
Gsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0C
?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0&
"sequential_1_lstm_1_while_identity(
$sequential_1_lstm_1_while_identity_1(
$sequential_1_lstm_1_while_identity_2(
$sequential_1_lstm_1_while_identity_3(
$sequential_1_lstm_1_while_identity_4(
$sequential_1_lstm_1_while_identity_5A
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1}
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensorG
Csequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resourceI
Esequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceA
=sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource??4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp?6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1?6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2?6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3?:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp?<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????    2M
Ksequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_1_while_placeholderTsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:????????? *
element_dtype02?
=sequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem?
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ShapeShapeDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/Shape?
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5sequential_1/lstm_1/while/lstm_cell_1/ones_like/Const?
/sequential_1/lstm_1/while/lstm_cell_1/ones_likeFill>sequential_1/lstm_1/while/lstm_cell_1/ones_like/Shape:output:0>sequential_1/lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:????????? 21
/sequential_1/lstm_1/while/lstm_cell_1/ones_like?
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/ShapeShape'sequential_1_lstm_1_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/Shape?
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/Const?
1sequential_1/lstm_1/while/lstm_cell_1/ones_like_1Fill@sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/Shape:output:0@sequential_1/lstm_1/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????223
1sequential_1/lstm_1/while/lstm_cell_1/ones_like_1?
)sequential_1/lstm_1/while/lstm_cell_1/mulMulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential_1/lstm_1/while/lstm_cell_1/mul?
+sequential_1/lstm_1/while/lstm_cell_1/mul_1MulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_1?
+sequential_1/lstm_1/while/lstm_cell_1/mul_2MulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_2?
+sequential_1/lstm_1/while/lstm_cell_1/mul_3MulDsequential_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_1/lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:????????? 2-
+sequential_1/lstm_1/while/lstm_cell_1/mul_3?
+sequential_1/lstm_1/while/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_1/lstm_1/while/lstm_cell_1/Const?
5sequential_1/lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/lstm_1/while/lstm_cell_1/split/split_dim?
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOpReadVariableOpEsequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	 ?*
dtype02<
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp?
+sequential_1/lstm_1/while/lstm_cell_1/splitSplit>sequential_1/lstm_1/while/lstm_cell_1/split/split_dim:output:0Bsequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: 2: 2: 2: 2*
	num_split2-
+sequential_1/lstm_1/while/lstm_cell_1/split?
,sequential_1/lstm_1/while/lstm_cell_1/MatMulMatMul-sequential_1/lstm_1/while/lstm_cell_1/mul:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????22.
,sequential_1/lstm_1/while/lstm_cell_1/MatMul?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_1MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_1:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_1?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_2MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_2:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_2?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_3MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_3:z:04sequential_1/lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_3?
-sequential_1/lstm_1/while/lstm_cell_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_1/lstm_1/while/lstm_cell_1/Const_1?
7sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dim?
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOpGsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp?
-sequential_1/lstm_1/while/lstm_cell_1/split_1Split@sequential_1/lstm_1/while/lstm_cell_1/split_1/split_dim:output:0Dsequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:2:2:2:2*
	num_split2/
-sequential_1/lstm_1/while/lstm_cell_1/split_1?
-sequential_1/lstm_1/while/lstm_cell_1/BiasAddBiasAdd6sequential_1/lstm_1/while/lstm_cell_1/MatMul:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:0*
T0*'
_output_shapes
:?????????22/
-sequential_1/lstm_1/while/lstm_cell_1/BiasAdd?
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_1:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:1*
T0*'
_output_shapes
:?????????221
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1?
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_2:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:2*
T0*'
_output_shapes
:?????????221
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2?
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3BiasAdd8sequential_1/lstm_1/while/lstm_cell_1/MatMul_3:product:06sequential_1/lstm_1/while/lstm_cell_1/split_1:output:3*
T0*'
_output_shapes
:?????????221
/sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3?
+sequential_1/lstm_1/while/lstm_cell_1/mul_4Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/mul_4?
+sequential_1/lstm_1/while/lstm_cell_1/mul_5Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/mul_5?
+sequential_1/lstm_1/while/lstm_cell_1/mul_6Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/mul_6?
+sequential_1/lstm_1/while/lstm_cell_1/mul_7Mul'sequential_1_lstm_1_while_placeholder_2:sequential_1/lstm_1/while/lstm_cell_1/ones_like_1:output:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/mul_7?
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOpReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype026
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp?
9sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    2   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2?
3sequential_1/lstm_1/while/lstm_cell_1/strided_sliceStridedSlice<sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp:value:0Bsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack:output:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_1:output:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask25
3sequential_1/lstm_1/while/lstm_cell_1/strided_slice?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_4MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_4:z:0<sequential_1/lstm_1/while/lstm_cell_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_4?
)sequential_1/lstm_1/while/lstm_cell_1/addAddV26sequential_1/lstm_1/while/lstm_cell_1/BiasAdd:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_4:product:0*
T0*'
_output_shapes
:?????????22+
)sequential_1/lstm_1/while/lstm_cell_1/add?
-sequential_1/lstm_1/while/lstm_cell_1/SigmoidSigmoid-sequential_1/lstm_1/while/lstm_cell_1/add:z:0*
T0*'
_output_shapes
:?????????22/
-sequential_1/lstm_1/while/lstm_cell_1/Sigmoid?
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    2   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2?
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_1:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_5MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_5:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_5?
+sequential_1/lstm_1/while/lstm_cell_1/add_1AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_1:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_5:product:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/add_1?
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid/sequential_1/lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????221
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1?
+sequential_1/lstm_1/while/lstm_cell_1/mul_8Mul3sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_1:y:0'sequential_1_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/mul_8?
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    d   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2?
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_2:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_6MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_6:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_6?
+sequential_1/lstm_1/while/lstm_cell_1/add_2AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_2:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_6:product:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/add_2?
*sequential_1/lstm_1/while/lstm_cell_1/TanhTanh/sequential_1/lstm_1/while/lstm_cell_1/add_2:z:0*
T0*'
_output_shapes
:?????????22,
*sequential_1/lstm_1/while/lstm_cell_1/Tanh?
+sequential_1/lstm_1/while/lstm_cell_1/mul_9Mul1sequential_1/lstm_1/while/lstm_cell_1/Sigmoid:y:0.sequential_1/lstm_1/while/lstm_cell_1/Tanh:y:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/mul_9?
+sequential_1/lstm_1/while/lstm_cell_1/add_3AddV2/sequential_1/lstm_1/while/lstm_cell_1/mul_8:z:0/sequential_1/lstm_1/while/lstm_cell_1/mul_9:z:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/add_3?
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype028
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3?
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2=
;sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2?
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3StridedSlice>sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3:value:0Dsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_1:output:0Fsequential_1/lstm_1/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:22*

begin_mask*
end_mask27
5sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3?
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_7MatMul/sequential_1/lstm_1/while/lstm_cell_1/mul_7:z:0>sequential_1/lstm_1/while/lstm_cell_1/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????220
.sequential_1/lstm_1/while/lstm_cell_1/MatMul_7?
+sequential_1/lstm_1/while/lstm_cell_1/add_4AddV28sequential_1/lstm_1/while/lstm_cell_1/BiasAdd_3:output:08sequential_1/lstm_1/while/lstm_cell_1/MatMul_7:product:0*
T0*'
_output_shapes
:?????????22-
+sequential_1/lstm_1/while/lstm_cell_1/add_4?
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid/sequential_1/lstm_1/while/lstm_cell_1/add_4:z:0*
T0*'
_output_shapes
:?????????221
/sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2?
,sequential_1/lstm_1/while/lstm_cell_1/Tanh_1Tanh/sequential_1/lstm_1/while/lstm_cell_1/add_3:z:0*
T0*'
_output_shapes
:?????????22.
,sequential_1/lstm_1/while/lstm_cell_1/Tanh_1?
,sequential_1/lstm_1/while/lstm_cell_1/mul_10Mul3sequential_1/lstm_1/while/lstm_cell_1/Sigmoid_2:y:00sequential_1/lstm_1/while/lstm_cell_1/Tanh_1:y:0*
T0*'
_output_shapes
:?????????22.
,sequential_1/lstm_1/while/lstm_cell_1/mul_10?
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_1_while_placeholder_1%sequential_1_lstm_1_while_placeholder0sequential_1/lstm_1/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype02@
>sequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem?
sequential_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_1/lstm_1/while/add/y?
sequential_1/lstm_1/while/addAddV2%sequential_1_lstm_1_while_placeholder(sequential_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_1/lstm_1/while/add?
!sequential_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_1/lstm_1/while/add_1/y?
sequential_1/lstm_1/while/add_1AddV2@sequential_1_lstm_1_while_sequential_1_lstm_1_while_loop_counter*sequential_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_1/lstm_1/while/add_1?
"sequential_1/lstm_1/while/IdentityIdentity#sequential_1/lstm_1/while/add_1:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_1/lstm_1/while/Identity?
$sequential_1/lstm_1/while/Identity_1IdentityFsequential_1_lstm_1_while_sequential_1_lstm_1_while_maximum_iterations5^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_1?
$sequential_1/lstm_1/while/Identity_2Identity!sequential_1/lstm_1/while/add:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_2?
$sequential_1/lstm_1/while/Identity_3IdentityNsequential_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_1/lstm_1/while/Identity_3?
$sequential_1/lstm_1/while/Identity_4Identity0sequential_1/lstm_1/while/lstm_cell_1/mul_10:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22&
$sequential_1/lstm_1/while/Identity_4?
$sequential_1/lstm_1/while/Identity_5Identity/sequential_1/lstm_1/while/lstm_cell_1/add_3:z:05^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp7^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_17^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_27^sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_3;^sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp=^sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????22&
$sequential_1/lstm_1/while/Identity_5"Q
"sequential_1_lstm_1_while_identity+sequential_1/lstm_1/while/Identity:output:0"U
$sequential_1_lstm_1_while_identity_1-sequential_1/lstm_1/while/Identity_1:output:0"U
$sequential_1_lstm_1_while_identity_2-sequential_1/lstm_1/while/Identity_2:output:0"U
$sequential_1_lstm_1_while_identity_3-sequential_1/lstm_1/while/Identity_3:output:0"U
$sequential_1_lstm_1_while_identity_4-sequential_1/lstm_1/while/Identity_4:output:0"U
$sequential_1_lstm_1_while_identity_5-sequential_1/lstm_1/while/Identity_5:output:0"?
=sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource?sequential_1_lstm_1_while_lstm_cell_1_readvariableop_resource_0"?
Esequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resourceGsequential_1_lstm_1_while_lstm_cell_1_split_1_readvariableop_resource_0"?
Csequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resourceEsequential_1_lstm_1_while_lstm_cell_1_split_readvariableop_resource_0"?
=sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1?sequential_1_lstm_1_while_sequential_1_lstm_1_strided_slice_1_0"?
ysequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :?????????2:?????????2: : :::2l
4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp4sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp2p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_16sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_12p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_26sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_22p
6sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_36sequential_1/lstm_1/while/lstm_cell_1/ReadVariableOp_32x
:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp:sequential_1/lstm_1/while/lstm_cell_1/split/ReadVariableOp2|
<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp<sequential_1/lstm_1/while/lstm_cell_1/split_1/ReadVariableOp: 
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
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
P
4__inference_spatial_dropout1d_1_layer_call_fn_354245

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_3526032
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
P
embedding_1_input;
#serving_default_embedding_1_input:0??????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?-
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
l__call__
*m&call_and_return_all_conditional_losses
n_default_save_signature"?*
_tf_keras_sequential?*{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_1_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 126506, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_1", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_1_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 126506, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_1", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
o__call__
*p&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 200]}, "dtype": "float32", "input_dim": 126506, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 200}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
q__call__
*r&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "SpatialDropout1D", "name": "spatial_dropout1d_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "spatial_dropout1d_1", "trainable": true, "dtype": "float32", "rate": 0.25, "noise_shape": null, "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?	{"class_name": "LSTM", "name": "lstm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 200, 32]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
w__call__
*x&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?
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
 "
trackable_list_wrapper
J
0
*1
+2
,3
4
 5"
trackable_list_wrapper
?
	variables
regularization_losses
	trainable_variables
-non_trainable_variables
.metrics
/layer_regularization_losses
0layer_metrics

1layers
l__call__
n_default_save_signature
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
*:(
?? 2embedding_1/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
regularization_losses
	variables
trainable_variables
2non_trainable_variables
3metrics
4layer_regularization_losses
5layer_metrics

6layers
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
?
regularization_losses
	variables
trainable_variables
7non_trainable_variables
8metrics
9layer_regularization_losses
:layer_metrics

;layers
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
?

*kernel
+recurrent_kernel
,bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
z__call__
*{&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.5, "recurrent_dropout": 0.5, "implementation": 1}}
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
?

@states
	variables
regularization_losses
trainable_variables
Anon_trainable_variables
Bmetrics
Clayer_regularization_losses
Dlayer_metrics

Elayers
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
?
regularization_losses
	variables
trainable_variables
Fnon_trainable_variables
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics

Jlayers
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 :22dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
!regularization_losses
"	variables
#trainable_variables
Knon_trainable_variables
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics

Olayers
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
,:*	 ?2lstm_1/lstm_cell_1/kernel
6:4	2?2#lstm_1/lstm_cell_1/recurrent_kernel
&:$?2lstm_1/lstm_cell_1/bias
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
5
*0
+1
,2"
trackable_list_wrapper
?
<regularization_losses
=	variables
>trainable_variables
Rnon_trainable_variables
Smetrics
Tlayer_regularization_losses
Ulayer_metrics

Vlayers
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
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
?
	Wtotal
	Xcount
Y	variables
Z	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
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
/:-
?? 2Adam/embedding_1/embeddings/m
%:#22Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
1:/	 ?2 Adam/lstm_1/lstm_cell_1/kernel/m
;:9	2?2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)?2Adam/lstm_1/lstm_cell_1/bias/m
/:-
?? 2Adam/embedding_1/embeddings/v
%:#22Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
1:/	 ?2 Adam/lstm_1/lstm_cell_1/kernel/v
;:9	2?2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)?2Adam/lstm_1/lstm_cell_1/bias/v
?2?
-__inference_sequential_1_layer_call_fn_354191
-__inference_sequential_1_layer_call_fn_353400
-__inference_sequential_1_layer_call_fn_353438
-__inference_sequential_1_layer_call_fn_354174?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_354157
H__inference_sequential_1_layer_call_and_return_conditional_losses_353887
H__inference_sequential_1_layer_call_and_return_conditional_losses_353361
H__inference_sequential_1_layer_call_and_return_conditional_losses_353340?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_351709?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *1?.
,?)
embedding_1_input??????????
?2?
,__inference_embedding_1_layer_call_fn_354208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_embedding_1_layer_call_and_return_conditional_losses_354201?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_spatial_dropout1d_1_layer_call_fn_354245
4__inference_spatial_dropout1d_1_layer_call_fn_354277
4__inference_spatial_dropout1d_1_layer_call_fn_354282
4__inference_spatial_dropout1d_1_layer_call_fn_354240?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354230
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354235
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354267
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354272?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_lstm_1_layer_call_fn_355602
'__inference_lstm_1_layer_call_fn_354931
'__inference_lstm_1_layer_call_fn_355591
'__inference_lstm_1_layer_call_fn_354942?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_1_layer_call_and_return_conditional_losses_354920
B__inference_lstm_1_layer_call_and_return_conditional_losses_355325
B__inference_lstm_1_layer_call_and_return_conditional_losses_355580
B__inference_lstm_1_layer_call_and_return_conditional_losses_354665?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_1_layer_call_fn_355629
*__inference_dropout_1_layer_call_fn_355624?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_355614
E__inference_dropout_1_layer_call_and_return_conditional_losses_355619?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_1_layer_call_fn_355649?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_1_layer_call_and_return_conditional_losses_355640?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_353465embedding_1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_lstm_cell_1_layer_call_fn_355915
,__inference_lstm_cell_1_layer_call_fn_355898?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_355881
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_355797?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_351709x*,+ ;?8
1?.
,?)
embedding_1_input??????????
? "1?.
,
dense_1!?
dense_1??????????
C__inference_dense_1_layer_call_and_return_conditional_losses_355640\ /?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? {
(__inference_dense_1_layer_call_fn_355649O /?,
%?"
 ?
inputs?????????2
? "???????????
E__inference_dropout_1_layer_call_and_return_conditional_losses_355614\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_355619\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? }
*__inference_dropout_1_layer_call_fn_355624O3?0
)?&
 ?
inputs?????????2
p
? "??????????2}
*__inference_dropout_1_layer_call_fn_355629O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2?
G__inference_embedding_1_layer_call_and_return_conditional_losses_354201a0?-
&?#
!?
inputs??????????
? "*?'
 ?
0?????????? 
? ?
,__inference_embedding_1_layer_call_fn_354208T0?-
&?#
!?
inputs??????????
? "??????????? ?
B__inference_lstm_1_layer_call_and_return_conditional_losses_354665}*,+O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "%?"
?
0?????????2
? ?
B__inference_lstm_1_layer_call_and_return_conditional_losses_354920}*,+O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "%?"
?
0?????????2
? ?
B__inference_lstm_1_layer_call_and_return_conditional_losses_355325n*,+@?=
6?3
%?"
inputs?????????? 

 
p

 
? "%?"
?
0?????????2
? ?
B__inference_lstm_1_layer_call_and_return_conditional_losses_355580n*,+@?=
6?3
%?"
inputs?????????? 

 
p 

 
? "%?"
?
0?????????2
? ?
'__inference_lstm_1_layer_call_fn_354931p*,+O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p

 
? "??????????2?
'__inference_lstm_1_layer_call_fn_354942p*,+O?L
E?B
4?1
/?,
inputs/0?????????????????? 

 
p 

 
? "??????????2?
'__inference_lstm_1_layer_call_fn_355591a*,+@?=
6?3
%?"
inputs?????????? 

 
p

 
? "??????????2?
'__inference_lstm_1_layer_call_fn_355602a*,+@?=
6?3
%?"
inputs?????????? 

 
p 

 
? "??????????2?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_355797?*,+??}
v?s
 ?
inputs????????? 
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_355881?*,+??}
v?s
 ?
inputs????????? 
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
,__inference_lstm_cell_1_layer_call_fn_355898?*,+??}
v?s
 ?
inputs????????? 
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
,__inference_lstm_cell_1_layer_call_fn_355915?*,+??}
v?s
 ?
inputs????????? 
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353340t*,+ C?@
9?6
,?)
embedding_1_input??????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353361t*,+ C?@
9?6
,?)
embedding_1_input??????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_353887i*,+ 8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_354157i*,+ 8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_1_layer_call_fn_353400g*,+ C?@
9?6
,?)
embedding_1_input??????????
p

 
? "???????????
-__inference_sequential_1_layer_call_fn_353438g*,+ C?@
9?6
,?)
embedding_1_input??????????
p 

 
? "???????????
-__inference_sequential_1_layer_call_fn_354174\*,+ 8?5
.?+
!?
inputs??????????
p

 
? "???????????
-__inference_sequential_1_layer_call_fn_354191\*,+ 8?5
.?+
!?
inputs??????????
p 

 
? "???????????
$__inference_signature_wrapper_353465?*,+ P?M
? 
F?C
A
embedding_1_input,?)
embedding_1_input??????????"1?.
,
dense_1!?
dense_1??????????
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354230f8?5
.?+
%?"
inputs?????????? 
p
? "*?'
 ?
0?????????? 
? ?
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354235f8?5
.?+
%?"
inputs?????????? 
p 
? "*?'
 ?
0?????????? 
? ?
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354267?I?F
??<
6?3
inputs'???????????????????????????
p
? ";?8
1?.
0'???????????????????????????
? ?
O__inference_spatial_dropout1d_1_layer_call_and_return_conditional_losses_354272?I?F
??<
6?3
inputs'???????????????????????????
p 
? ";?8
1?.
0'???????????????????????????
? ?
4__inference_spatial_dropout1d_1_layer_call_fn_354240Y8?5
.?+
%?"
inputs?????????? 
p
? "??????????? ?
4__inference_spatial_dropout1d_1_layer_call_fn_354245Y8?5
.?+
%?"
inputs?????????? 
p 
? "??????????? ?
4__inference_spatial_dropout1d_1_layer_call_fn_354277{I?F
??<
6?3
inputs'???????????????????????????
p
? ".?+'????????????????????????????
4__inference_spatial_dropout1d_1_layer_call_fn_354282{I?F
??<
6?3
inputs'???????????????????????????
p 
? ".?+'???????????????????????????