.class public abstract Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SwitchingProvider$14;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
    .locals 9

    new-instance v8, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SwitchingProvider$14;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    return-object v8
.end method
