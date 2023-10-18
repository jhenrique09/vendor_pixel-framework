.class public final Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public sensitivity:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput v2, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    iput v1, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput v2, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    iput v1, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->$r8$classId:I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eq p0, v0, :cond_0

    add-int/2addr v2, v1

    :cond_0
    return v2

    :goto_0
    iget p0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eq p0, v0, :cond_1

    add-int/2addr v2, v1

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->$r8$classId:I

    const/16 v1, 0xd

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    goto :goto_2

    :cond_5
    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget p0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_0
    return-void

    :goto_0
    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
