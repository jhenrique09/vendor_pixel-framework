.class public final Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mAccXs:Ljava/util/Deque;

.field public final mAccYs:Ljava/util/Deque;

.field public final mAccZs:Ljava/util/Deque;

.field public mClassifier:Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;

.field public mFeatureVector:Ljava/util/ArrayList;

.field public mGotAcc:Z

.field public mGotGyro:Z

.field public final mGyroXs:Ljava/util/Deque;

.field public final mGyroYs:Ljava/util/Deque;

.field public final mGyroZs:Ljava/util/Deque;

.field public final mHighpassAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

.field public final mHighpassGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

.field public final mLowpassAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

.field public final mLowpassGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

.field public mNumberFeature:I

.field public final mPeakDetector:Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

.field public final mResampleAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

.field public final mResampleGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

.field public mResult:I

.field public mSizeFeatureWindow:I

.field public mSizeWindowNs:J

.field public final mSlopeAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

.field public final mSlopeGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

.field public mSyncTime:J

.field public final mTimestampsBackTap:Ljava/util/Deque;

.field public final mValleyDetector:Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

.field public mWasPeakApproaching:Z


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mFeatureVector:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mClassifier:Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccXs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccYs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccZs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroXs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroYs:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroZs:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotAcc:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotGyro:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSyncTime:J

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResampleAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mResampleGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Resample3C;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSlopeAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSlopeGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Slope3C;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

    invoke-direct {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mLowpassAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

    new-instance v2, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

    invoke-direct {v2}, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;-><init>()V

    iput-object v2, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mLowpassGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;

    new-instance v3, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

    invoke-direct {v3}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;-><init>()V

    iput-object v3, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mHighpassAcc:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

    new-instance v4, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

    invoke-direct {v4}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;-><init>()V

    iput-object v4, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mHighpassGyro:Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;

    new-instance v5, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

    invoke-direct {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;-><init>()V

    iput-object v5, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mPeakDetector:Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

    new-instance v5, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

    invoke-direct {v5}, Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;-><init>()V

    iput-object v5, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mValleyDetector:Lcom/google/android/systemui/columbus/legacy/sensors/PeakDetector;

    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v5, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mTimestampsBackTap:Ljava/util/Deque;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mWasPeakApproaching:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v0, v7

    goto :goto_1

    :sswitch_0
    const-string v0, "Pixel 4 XL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "Pixel 3 XL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "Pixel 5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string v5, "Pixel 4a (5G)"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p2, "tap7cls_flame.tflite"

    goto :goto_2

    :pswitch_0
    const-string p2, "tap7cls_coral.tflite"

    goto :goto_2

    :pswitch_1
    const-string p2, "tap7cls_crosshatch.tflite"

    goto :goto_2

    :pswitch_2
    const-string p2, "tap7cls_redfin.tflite"

    goto :goto_2

    :pswitch_3
    const-string p2, "tap7cls_bramble.tflite"

    :goto_2
    const-string v0, "TapRT loaded "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Columbus"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;

    invoke-direct {v0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mClassifier:Lcom/google/android/systemui/columbus/legacy/sensors/TfClassifier;

    const-wide/32 p1, 0x927c000

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeWindowNs:J

    const/16 p1, 0x32

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    const/16 p1, 0x12c

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mNumberFeature:I

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->setPara()V

    invoke-virtual {v2}, Lcom/google/android/systemui/columbus/legacy/sensors/Lowpass3C;->setPara()V

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->setPara()V

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/legacy/sensors/Highpass3C;->setPara()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x33df3b98 -> :sswitch_3
        0x41e9e4fb -> :sswitch_2
        0x718d4f7b -> :sswitch_1
        0x718dc3da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addToFeatureVector(Ljava/util/Deque;II)V
    .locals 3

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ge v0, p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSizeFeatureWindow:I

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mFeatureVector:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final reset$com$google$android$systemui$columbus$legacy$sensors$EventIMURT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccXs:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccYs:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mAccZs:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroXs:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroYs:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGyroZs:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotAcc:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mGotGyro:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/TapRT;->mSyncTime:J

    return-void
.end method
