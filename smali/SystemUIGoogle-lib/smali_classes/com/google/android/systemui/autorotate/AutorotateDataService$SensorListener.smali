.class public final Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x1b

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/16 v6, 0x258

    const-wide/32 v7, 0xf4240

    const/4 v9, 0x0

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    float-to-int v2, v2

    if-ltz v2, :cond_1

    if-le v2, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    new-array v5, v6, [Lcom/google/android/systemui/autorotate/SensorData;

    iput-object v5, v3, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    iput v9, v3, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    new-instance v5, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;

    iget-wide v9, v1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v9, v7

    invoke-direct {v5, v3, v2, v9, v10}, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;IJ)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v3, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    check-cast v3, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    const-wide/16 v6, 0x8fc

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-object v1, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLastPreIndication:I

    if-ne v2, v1, :cond_9

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    goto/16 :goto_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x1000c

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v2, v3, :cond_4

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    if-ge v2, v6, :cond_3

    iget-object v3, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    new-instance v4, Lcom/google/android/systemui/autorotate/SensorData;

    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v13, v6, v9

    aget v14, v6, v11

    aget v15, v6, v10

    aget v5, v6, v5

    float-to-int v5, v5

    iget-wide v9, v1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long v17, v9, v7

    move-object v12, v4

    move/from16 v16, v5

    invoke-direct/range {v12 .. v18}, Lcom/google/android/systemui/autorotate/SensorData;-><init>(FFFIJ)V

    aput-object v4, v3, v2

    add-int/2addr v2, v11

    iput v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    goto :goto_2

    :cond_3
    iput v9, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    goto :goto_2

    :cond_4
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x10011

    if-ne v2, v3, :cond_9

    iget-object v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-object v3, v2, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_9

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v9

    float-to-int v3, v3

    iget-object v2, v2, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v2, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iput v3, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLastPreIndication:I

    iget-wide v1, v1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v1, v7

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_7

    if-eq v3, v11, :cond_6

    if-eq v3, v10, :cond_8

    if-eq v3, v5, :cond_5

    move v5, v9

    goto :goto_1

    :cond_5
    const/4 v5, 0x4

    goto :goto_1

    :cond_6
    move v5, v10

    goto :goto_1

    :cond_7
    move v5, v11

    :cond_8
    :goto_1
    const/16 v0, 0x14d

    invoke-static {v0, v1, v2, v5, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    :cond_9
    :goto_2
    return-void
.end method
