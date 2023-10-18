.class public final Lcom/google/android/systemui/elmyra/SnapshotLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mSnapshotCapacity:I

.field public final mSnapshots:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshotCapacity:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p0, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshotCapacity:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;-><init>(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 10

    const-string v0, "Dumping Elmyra Snapshots"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SystemTime: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    iget-wide v5, v2, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Snapshot: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "header {"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  identifier: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iget-wide v4, v4, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  gesture_type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iget v4, v4, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  feedback: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iget v4, v4, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v0

    :goto_1
    iget-object v5, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    const-string v5, "events {"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    aget-object v5, v5, v4

    iget v6, v5, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    move v9, v8

    goto :goto_2

    :cond_0
    move v9, v0

    :goto_2
    if-eqz v9, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  gesture_stage: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    aget-object v6, v6, v4

    iget v8, v6, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    if-ne v8, v7, :cond_1

    iget-object v6, v6, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_1
    move v6, v0

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_2
    if-ne v6, v8, :cond_3

    move v7, v8

    goto :goto_4

    :cond_3
    move v7, v0

    :goto_4
    if-eqz v7, :cond_6

    if-ne v6, v8, :cond_4

    iget-object v5, v5, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    const-string v6, "  sensor_event {"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    timestamp: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v5, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->timestamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v6, v0

    :goto_6
    iget-object v7, v5, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    array-length v7, v7

    if-ge v6, v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    values: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    const-string v5, "  }"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    :goto_7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sensitivity_setting: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string p0, "Finished Dumping Elmyra Snapshots"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
