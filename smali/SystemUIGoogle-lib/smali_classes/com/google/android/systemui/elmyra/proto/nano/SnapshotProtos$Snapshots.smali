.class public final Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;
.super Lcom/google/protobuf/nano/MessageNano;
.source ""


# instance fields
.field public snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    sput-object v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-eqz v3, :cond_3

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    new-instance v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    invoke-direct {v1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    goto :goto_0

    :cond_5
    :goto_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
