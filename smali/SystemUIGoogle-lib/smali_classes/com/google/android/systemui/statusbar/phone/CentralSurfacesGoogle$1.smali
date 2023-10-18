.class public final Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 4

    iget-object p2, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;

    iput p1, p2, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReceivingBatteryLevel:I

    iget-object p3, p2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mAnimStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iput-boolean v1, p2, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mChargingAnimShown:Z

    :cond_0
    iput-boolean v1, p2, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingAnimShown:Z

    :cond_1
    sget-boolean v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "onBatteryLevelChanged(): level="

    const-string v1, ",wlc="

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    check-cast p3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean p3, p3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",wlcs="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p2, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mChargingAnimShown:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",rtxs="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingAnimShown:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CentralSurfacesGoogle"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final onReverseChanged(ILjava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;

    if-nez p3, :cond_1

    if-ltz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mChargingAnimShown:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingAnimShown:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingAnimShown:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mAnimStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5dc

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    sub-long v1, v3, v1

    :goto_0
    iget v3, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReceivingBatteryLevel:I

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->showChargingAnimation(IIJ)V

    :cond_1
    sget-boolean v1, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "onReverseChanged(): rtx="

    const-string v2, ",rxlevel="

    invoke-static {v1, p3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v1, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReceivingBatteryLevel:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",name="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",wlc="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlcs="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mChargingAnimShown:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",rtxs="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/google/android/systemui/statusbar/phone/CentralSurfacesGoogle;->mReverseChargingAnimShown:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",this="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CentralSurfacesGoogle"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
