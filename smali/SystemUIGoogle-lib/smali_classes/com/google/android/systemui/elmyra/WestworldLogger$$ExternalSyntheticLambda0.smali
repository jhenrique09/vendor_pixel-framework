.class public final synthetic Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/WestworldLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/WestworldLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/WestworldLogger;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 9

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Elmyra/Logger"

    const-string v1, "Receiving pull request from statsd."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Snapshot took "

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p0, "Elmyra/Logger"

    const-string p1, "Snapshot Controller is null, returning."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    monitor-exit v1

    goto/16 :goto_2

    :cond_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-direct {v3}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;-><init>()V

    const/4 v4, 0x4

    iput v4, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    iget-object v1, v1, Lcom/google/android/systemui/elmyra/SnapshotController;->mHandler:Lcom/google/android/systemui/elmyra/SnapshotController$1;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x32

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string v5, "Elmyra/Logger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mMutex:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;

    invoke-direct {v2}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;-><init>()V

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-virtual {v3}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput v3, v4, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    iput-object v4, v2, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iput-object v3, v2, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    iget-object v3, v2, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    iget-object v2, v2, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    monitor-exit v0

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Elmyra/Logger"

    invoke-virtual {p1}, Ljava/lang/IllegalMonitorStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Elmyra/Logger"

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mMutex:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    iput-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    monitor-exit p1

    const/4 v2, 0x0

    :goto_2
    return v2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method
