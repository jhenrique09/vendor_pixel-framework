.class public final Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# instance fields
.field public progressReportThreshold:F

.field public sensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_0
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eq p0, v0, :cond_1

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(I)I

    move-result p0

    add-int/2addr v3, p0

    :cond_1
    return v3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_1
    return-void
.end method
