.class public final Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# instance fields
.field public feedback:I

.field public gestureType:I

.field public identifier:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(JI)I

    move-result v0

    add-int/2addr v3, v0

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v3, v0

    :cond_1
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v3, p0

    :cond_2
    return v3
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    goto :goto_0

    :cond_6
    :goto_1
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(JI)V

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    return-void
.end method
