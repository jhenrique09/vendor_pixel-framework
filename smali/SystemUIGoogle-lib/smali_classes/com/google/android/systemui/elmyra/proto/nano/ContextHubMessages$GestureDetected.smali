.class public final Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# instance fields
.field public hapticConsumed:Z

.field public hostSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr v2, p0

    :cond_1
    return v2
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    goto :goto_0

    :cond_5
    :goto_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    :cond_1
    return-void
.end method
