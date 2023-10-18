.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideSensorPrivacyControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0}, Landroid/hardware/SensorPrivacyManager;->isAllSensorPrivacyEnabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V

    return-object v0
.end method
