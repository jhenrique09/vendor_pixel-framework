.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public getBatteryMeterViewProvider:Ljavax/inject/Provider;

.field public getCarrierTextProvider:Ljavax/inject/Provider;

.field public final view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/shade/NotificationPanelViewController$11;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->view:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    new-instance p3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x0

    const/4 v10, 0x7

    const/4 v5, 0x7

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->getCarrierTextProvider:Ljavax/inject/Provider;

    new-instance p3, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v9, 0x1

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$KeyguardStatusBarViewComponentImpl;->getBatteryMeterViewProvider:Ljavax/inject/Provider;

    return-void
.end method
