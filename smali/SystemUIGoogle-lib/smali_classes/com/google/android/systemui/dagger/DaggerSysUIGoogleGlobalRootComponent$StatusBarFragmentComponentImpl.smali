.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final collapsedStatusBarFragment:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

.field public endSideContentProvider:Ljavax/inject/Provider;

.field public headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

.field public lightsOutNotifControllerProvider:Ljavax/inject/Provider;

.field public provideBatteryMeterViewProvider:Ljavax/inject/Provider;

.field public provideClockProvider:Ljavax/inject/Provider;

.field public provideLightsOutNotifViewProvider:Ljavax/inject/Provider;

.field public provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

.field public provideOperatorNameViewProvider:Ljavax/inject/Provider;

.field public providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

.field public providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

.field public providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

.field public providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

.field public startSideContentProvider:Ljavax/inject/Provider;

.field public statusBarBoundsProvider:Ljavax/inject/Provider;

.field public statusBarDemoModeProvider:Ljavax/inject/Provider;

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public final sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->collapsedStatusBarFragment:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->provideBatteryMeterViewProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x2

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x4

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x5

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->provideClockProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x6

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x3

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0x8

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->provideLightsOutNotifViewProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/4 v5, 0x7

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0xa

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorNameViewProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0xb

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0x9

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarDemoModeProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0xd

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->startSideContentProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0xe

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->endSideContentProvider:Ljavax/inject/Provider;

    new-instance p4, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    const/16 v5, 0xc

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    invoke-static {p4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarBoundsProvider:Ljavax/inject/Provider;

    return-void
.end method
