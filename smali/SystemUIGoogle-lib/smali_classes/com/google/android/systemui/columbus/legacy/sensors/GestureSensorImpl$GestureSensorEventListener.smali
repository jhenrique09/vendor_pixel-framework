.class public final Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 30

    move-object/from16 v0, p1

    if-eqz v0, :cond_1d

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    iget-object v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;

    iget-object v3, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v12, v4, v5

    const/4 v13, 0x1

    aget v14, v4, v13

    const/4 v15, 0x2

    aget v4, v4, v15

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, v1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->samplingIntervalNs:J

    const/4 v8, 0x6

    iput v8, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResult:I

    iget-object v9, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    iget-object v8, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccZs:Ljava/util/Deque;

    iget-object v5, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResampleAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    iget-object v15, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResampleGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    const-wide/16 v17, 0x0

    if-ne v3, v13, :cond_1

    iput-boolean v13, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotAcc:Z

    move/from16 v19, v14

    iget-wide v13, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSyncTime:J

    cmp-long v13, v17, v13

    if-nez v13, :cond_0

    iput v12, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastX:F

    iput-wide v10, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastT:J

    iput v12, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledThisX:F

    iput-wide v10, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledLastT:J

    iput-wide v6, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    move/from16 v13, v19

    iput v13, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastY:F

    iput v4, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastZ:F

    iput v13, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledThisY:F

    iput v4, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledThisZ:F

    goto :goto_0

    :cond_0
    move/from16 v13, v19

    :goto_0
    iget-boolean v6, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotGyro:Z

    if-nez v6, :cond_3

    goto :goto_1

    :cond_1
    move v13, v14

    const/4 v14, 0x4

    if-ne v3, v14, :cond_3

    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotGyro:Z

    move-object/from16 v19, v8

    move-object v14, v9

    iget-wide v8, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSyncTime:J

    cmp-long v8, v17, v8

    if-nez v8, :cond_2

    iput v12, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastX:F

    iput-wide v10, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastT:J

    iput v12, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledThisX:F

    iput-wide v10, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledLastT:J

    iput-wide v6, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    iput v13, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastY:F

    iput v4, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mRawLastZ:F

    iput v13, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledThisY:F

    iput v4, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledThisZ:F

    :cond_2
    iget-boolean v6, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotAcc:Z

    if-nez v6, :cond_4

    :goto_1
    move-object v0, v1

    goto/16 :goto_f

    :cond_3
    move-object/from16 v19, v8

    move-object v14, v9

    :cond_4
    iget-wide v6, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSyncTime:J

    cmp-long v6, v17, v6

    iget-object v9, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSlopeAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

    iget-object v8, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mLowpassAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

    iget-object v7, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mHighpassAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

    move-object/from16 v17, v14

    iget-object v14, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mHighpassGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

    iget-object v0, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mLowpassGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSlopeGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

    if-nez v6, :cond_6

    iput-wide v10, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSyncTime:J

    iput-wide v10, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledLastT:J

    iput-wide v10, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mResampledLastT:J

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    iget v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->x:F

    iget-object v4, v9, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;

    iput v3, v4, Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;->mRawLastX:F

    iget v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->y:F

    iget-object v4, v9, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;

    iput v3, v4, Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;->mRawLastX:F

    iget v2, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->z:F

    iget-object v3, v9, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;

    iput v2, v3, Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;->mRawLastX:F

    invoke-virtual {v15}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    iget v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->x:F

    iget-object v4, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->mSlopeX:Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;

    iput v3, v4, Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;->mRawLastX:F

    iget v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->y:F

    iget-object v4, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->mSlopeY:Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;

    iput v3, v4, Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;->mRawLastX:F

    iget v2, v2, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->z:F

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->mSlopeZ:Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;

    iput v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Slope1C;->mRawLastX:F

    iget-object v1, v8, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;->mLastX:F

    iget-object v1, v8, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;

    iput v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;->mLastX:F

    iget-object v1, v8, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;

    iput v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;->mLastX:F

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->mLowpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;

    iput v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;->mLastX:F

    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->mLowpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;

    iput v2, v1, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;->mLastX:F

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->mLowpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass1C;->mLastX:F

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v7, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastX:F

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastY:F

    iget-object v0, v7, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastX:F

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastY:F

    iget-object v0, v7, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastX:F

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastY:F

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v14, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassX:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastX:F

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastY:F

    iget-object v0, v14, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassY:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastX:F

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastY:F

    iget-object v0, v14, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->mHighpassZ:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastX:F

    iput v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass1C;->mLastY:F

    :cond_5
    :goto_2
    move-object/from16 v0, v18

    goto/16 :goto_f

    :cond_6
    iget-object v6, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccYs:Ljava/util/Deque;

    move-object/from16 v20, v14

    iget-object v14, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccXs:Ljava/util/Deque;

    const v21, 0x4a127c00    # 2400000.0f

    move-object/from16 v22, v0

    iget-object v0, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

    move-object/from16 v23, v1

    iget-object v1, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    :goto_3
    iget-object v6, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResampleAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    move-object/from16 v3, v24

    move-object v15, v7

    move v7, v12

    move/from16 v24, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v1

    move-object v1, v8

    move v8, v13

    move/from16 v25, v13

    move-object v13, v9

    move v9, v4

    move-wide/from16 v26, v10

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->update(FFFJ)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    long-to-float v7, v7

    div-float v7, v21, v7

    iget-object v6, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    invoke-virtual {v13, v6, v7}, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;F)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-result-object v6

    iget v7, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v8, v14

    check-cast v8, Ljava/util/ArrayDeque;

    invoke-virtual {v8, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->y:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v9, v3

    check-cast v9, Ljava/util/ArrayDeque;

    invoke-virtual {v9, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v6, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->z:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v7, v12

    check-cast v7, Ljava/util/ArrayDeque;

    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-wide v10, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    move-object v6, v13

    move-object/from16 v28, v14

    iget-wide v13, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeWindowNs:J

    div-long/2addr v13, v10

    long-to-int v10, v13

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v11

    if-le v11, v10, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v9

    iget-wide v9, v9, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mT:J

    invoke-virtual {v0, v8, v9, v10}, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;->update(FJ)V

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mT:J

    move-object/from16 v13, v19

    invoke-virtual {v13, v7, v8, v9}, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;->update(FJ)V

    move-object v8, v1

    move-object v9, v6

    move-object/from16 v19, v12

    move-object v1, v13

    move-object v7, v15

    move/from16 v12, v24

    move/from16 v13, v25

    move-wide/from16 v10, v26

    move-object/from16 v14, v28

    move-object/from16 v24, v3

    goto/16 :goto_3

    :cond_8
    move-wide/from16 v26, v10

    move/from16 v25, v13

    move-object/from16 v28, v14

    const/4 v6, 0x4

    move-object v13, v1

    move-object/from16 v1, v24

    move/from16 v24, v12

    move-object/from16 v12, v19

    if-ne v3, v6, :cond_5

    :goto_5
    iget-object v6, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResampleGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    move/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v3, v17

    move v9, v4

    move-wide/from16 v10, v26

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->update(FFFJ)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v15}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v6

    iget-wide v7, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    long-to-float v7, v7

    div-float v7, v21, v7

    iget-object v6, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mPoint:Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-object/from16 v8, v23

    invoke-virtual {v8, v6, v7}, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;->update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;F)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-result-object v6

    move-object/from16 v7, v22

    invoke-virtual {v7, v6}, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-result-object v6

    move-object/from16 v9, v20

    invoke-virtual {v9, v6}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->update(Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;)Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;

    move-result-object v6

    iget-object v10, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroXs:Ljava/util/Deque;

    iget v11, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->x:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object v14, v10

    check-cast v14, Ljava/util/ArrayDeque;

    invoke-virtual {v14, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v11, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroYs:Ljava/util/Deque;

    move/from16 v17, v4

    iget v4, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v7, v11

    check-cast v7, Ljava/util/ArrayDeque;

    invoke-virtual {v7, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroZs:Ljava/util/Deque;

    iget v6, v6, Lcom/google/android/systemui/columbus/legacy/sensors/Point3f;->z:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v8, v4

    check-cast v8, Ljava/util/ArrayDeque;

    invoke-virtual {v8, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object v6, v3

    move-object/from16 v19, v4

    iget-wide v3, v15, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    move-object/from16 v29, v10

    iget-wide v9, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeWindowNs:J

    div-long/2addr v9, v3

    long-to-int v3, v9

    :goto_6
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    if-le v4, v3, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    :cond_9
    iget-wide v3, v5, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->mInterval:J

    invoke-virtual {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v7

    invoke-virtual {v15}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;->getResults()Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;

    move-result-object v8

    iget-wide v9, v7, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mT:J

    iget-wide v7, v8, Lcom/google/android/systemui/columbus/legacy/sensors/Sample3C;->mT:J

    sub-long/2addr v9, v7

    div-long/2addr v9, v3

    long-to-int v3, v9

    iget v4, v0, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;->mPeakId:I

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v8, v13, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;->mPeakId:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v7, v0, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;->mAmplitude:F

    iget v9, v13, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;->mAmplitude:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_a

    goto :goto_7

    :cond_a
    move v4, v8

    :goto_7
    const/16 v7, 0xc

    if-le v4, v7, :cond_b

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mWasPeakApproaching:Z

    :cond_b
    add-int/lit8 v8, v4, -0x6

    sub-int v3, v8, v3

    move-object v9, v12

    check-cast v9, Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    if-ltz v8, :cond_13

    if-ltz v3, :cond_13

    iget v10, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    add-int v14, v8, v10

    if-gt v14, v9, :cond_13

    add-int/2addr v10, v3

    if-le v10, v9, :cond_c

    goto/16 :goto_d

    :cond_c
    iget-boolean v9, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mWasPeakApproaching:Z

    if-eqz v9, :cond_13

    if-gt v4, v7, :cond_13

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mWasPeakApproaching:Z

    move-object/from16 v7, v28

    invoke-virtual {v2, v7, v8, v4}, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    invoke-virtual {v2, v1, v8, v4}, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    const/4 v9, 0x2

    mul-int/2addr v4, v9

    invoke-virtual {v2, v12, v8, v4}, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    mul-int/lit8 v4, v4, 0x3

    move-object/from16 v8, v29

    invoke-virtual {v2, v8, v3, v4}, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    const/4 v8, 0x4

    mul-int/2addr v4, v8

    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    iget v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    mul-int/lit8 v4, v4, 0x5

    move-object/from16 v9, v19

    invoke-virtual {v2, v9, v3, v4}, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->addToFeatureVector(Ljava/util/Deque;II)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mFeatureVector:Ljava/util/ArrayList;

    const/16 v9, 0x64

    const/16 v10, 0x96

    invoke-virtual {v4, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mFeatureVector:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x2

    div-int/2addr v4, v9

    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    iput-object v3, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mFeatureVector:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mClassifier:Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;

    iget-object v4, v4, Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    if-nez v4, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    filled-new-array {v10, v9, v10, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[[F

    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_f

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/4 v14, 0x0

    aget-object v16, v9, v14

    aget-object v16, v16, v10

    aget-object v16, v16, v14

    aput v11, v16, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_f
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x7

    const/4 v11, 0x1

    filled-new-array {v11, v10}, [I

    move-result-object v14

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v3, v9}, Lorg/tensorflow/lite/InterpreterImpl;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v14

    :goto_a
    if-ge v9, v10, :cond_10

    aget-object v11, v3, v14

    aget v11, v11, v9

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_10
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const v4, -0x800001

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_12

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_11

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v9, v8

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_12
    iput v9, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResult:I

    goto :goto_e

    :cond_13
    :goto_d
    move-object/from16 v7, v28

    :cond_14
    :goto_e
    move-object/from16 v28, v7

    move/from16 v4, v17

    move-object/from16 v17, v6

    goto/16 :goto_5

    :cond_15
    move-object v6, v3

    iget v0, v2, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResult:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v6

    check-cast v9, Ljava/util/ArrayDeque;

    invoke-virtual {v9, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    :goto_f
    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->tap:Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;

    move-object/from16 v2, p1

    iget-wide v2, v2, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, v1, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x1dcd6500

    cmp-long v5, v5, v7

    if-lez v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    const/4 v14, 0x0

    goto :goto_11

    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5f5e100

    cmp-long v3, v3, v5

    if-lez v3, :cond_19

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x1

    const/4 v14, 0x2

    goto :goto_11

    :cond_1a
    const/4 v1, 0x1

    const/4 v14, 0x1

    :goto_11
    if-eq v14, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v14, v2, :cond_1b

    goto :goto_12

    :cond_1b
    iget-object v2, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_1c
    iget-object v1, v0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;-><init>(Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_12
    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;

    iget-object v3, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->gyroscope:Landroid/hardware/Sensor;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->isListening:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    iget-object v1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->sensorEventListener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensorImpl;->isListening:Z

    :goto_0
    return-void
.end method
