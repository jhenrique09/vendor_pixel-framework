.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final arg0:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field public final arg1:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

.field public final arg2:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field public foldAodAnimationControllerProvider:Ljavax/inject/Provider;

.field public keyguardUnfoldTransitionProvider:Ljavax/inject/Provider;

.field public notificationPanelUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

.field public unfoldHapticsPlayerProvider:Ljavax/inject/Provider;

.field public unfoldLightRevealOverlayAnimationProvider:Ljavax/inject/Provider;

.field public unfoldTransitionWallpaperControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)V
    .locals 11

    move-object v6, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p4

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg1:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg2:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    move-object v0, p3

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->arg0:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x0

    const/16 v8, 0xf

    const/16 v9, 0xf

    const/16 v10, 0xf

    const/16 v5, 0xf

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->keyguardUnfoldTransitionProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x2

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->notificationPanelUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x3

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->foldAodAnimationControllerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x4

    move-object v0, v7

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldTransitionWallpaperControllerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x5

    move-object v0, v7

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldHapticsPlayerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x6

    move-object v0, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIUnfoldComponentImpl;->unfoldLightRevealOverlayAnimationProvider:Ljavax/inject/Provider;

    return-void
.end method
