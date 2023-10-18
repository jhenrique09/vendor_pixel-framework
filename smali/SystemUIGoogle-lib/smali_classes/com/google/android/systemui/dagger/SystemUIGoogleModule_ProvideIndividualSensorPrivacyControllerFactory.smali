.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIndividualSensorPrivacyControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideIndividualSensorPrivacyController(Landroid/hardware/SensorPrivacyManager;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;
    .locals 7

    new-instance v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    new-instance p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    sget-object p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->SENSORS:[I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    aget v4, p0, v2

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v5

    invoke-virtual {v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v3

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSoftwareToggleState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
