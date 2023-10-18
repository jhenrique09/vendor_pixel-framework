.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public factoryProvider:Ljavax/inject/Provider;

.field public providesQSCutomizerProvider:Ljavax/inject/Provider;

.field public providesQSFooterProvider:Ljavax/inject/Provider;

.field public providesQSUsingCollapsedLandscapeMediaProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

.field public qSAnimatorProvider:Ljavax/inject/Provider;

.field public qSContainerImplControllerProvider:Ljavax/inject/Provider;

.field public qSCustomizerControllerProvider:Ljavax/inject/Provider;

.field public qSFooterViewControllerProvider:Ljavax/inject/Provider;

.field public qSPanelControllerProvider:Ljavax/inject/Provider;

.field public qSSquishinessControllerProvider:Ljavax/inject/Provider;

.field public final qsFragment:Lcom/android/systemui/qs/QSFragment;

.field public quickQSPanelControllerProvider:Ljavax/inject/Provider;

.field public quickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public final sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

.field public tileAdapterProvider:Ljavax/inject/Provider;

.field public tileQueryHelperProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/qs/QSFragment;)V
    .locals 13

    move-object v6, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v7, p1

    iput-object v7, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    move-object v8, p2

    iput-object v8, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    move-object/from16 v0, p3

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/QSFragment;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x2

    const/16 v10, 0xd

    const/16 v11, 0xd

    const/16 v12, 0xd

    const/16 v5, 0xd

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->providesQSCutomizerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->tileQueryHelperProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x4

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->tileAdapterProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x5

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x7

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    iput-object v9, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->providesQSUsingCollapsedLandscapeMediaProvider:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x6

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/16 v4, 0x8

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSAnimatorProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/16 v4, 0xa

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->quickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/16 v4, 0x9

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSContainerImplControllerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/16 v4, 0xc

    move-object v0, v9

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSFooterViewControllerProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/16 v4, 0xb

    move-object v0, v9

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->providesQSFooterProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/16 v4, 0xd

    move-object v0, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qSSquishinessControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final quickStatusBarHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->rootViewView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0344

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final rootViewView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$QSFragmentComponentImpl;->qsFragment:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
