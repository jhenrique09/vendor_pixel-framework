.class public final Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroyInterface()V
    .locals 0

    return-void
.end method

.method public final onReceiveStatus(ILjava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    sget-boolean v1, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->DEBUG:Z

    const-string v1, "Active"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "Enabled"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    if-eqz p2, :cond_2

    if-lez p1, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    iget-wide v3, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mEstimatedChargeCompletion:J

    add-int/lit8 p1, p1, 0x1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mEstimatedChargeCompletion:J

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-boolean p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    if-ne v0, p1, :cond_3

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x1e

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-lez p1, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_4
    return-void
.end method
