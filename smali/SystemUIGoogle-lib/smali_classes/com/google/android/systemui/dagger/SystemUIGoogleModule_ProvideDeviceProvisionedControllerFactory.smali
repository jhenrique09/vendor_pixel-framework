.class public abstract Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideDeviceProvisionedControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDeviceProvisionedController(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->initted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->updateValues(IZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userChangedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->backgroundExecutor:Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-interface {v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisionedUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->observer:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;

    invoke-interface {v2, v4, v1, v5, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-interface {v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->frpActiveUri:Landroid/net/Uri;

    invoke-interface {v2, v4, v1, v5, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupUri:Landroid/net/Uri;

    invoke-interface {v2, p0, v1, v5, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_0
    return-void
.end method
