.class public final Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public cutoff:F

.field public rate:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    iput v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    iput v1, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    iput v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    iput v1, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->$r8$classId:I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v0, v5, :cond_0

    add-int/2addr v3, v2

    :cond_0
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eq p0, v0, :cond_1

    add-int/2addr v3, v1

    :cond_1
    return v3

    :goto_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v0, v5, :cond_2

    add-int/2addr v3, v2

    :cond_2
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eq p0, v0, :cond_3

    add-int/2addr v3, v1

    :cond_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->$r8$classId:I

    const/16 v1, 0x15

    const/16 v2, 0xd

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    goto :goto_2

    :cond_7
    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_1
    return-void

    :goto_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_2
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-virtual {p1, v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
