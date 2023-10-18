.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final arg0:Landroidx/lifecycle/LifecycleOwner;

.field public final arg3:Lcom/android/systemui/touch/TouchInsetManager;

.field public complicationLayoutEngineProvider:Ljavax/inject/Provider;

.field public providesComplicationHostViewProvider:Ljavax/inject/Provider;

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/touch/TouchInsetManager;)V
    .locals 10

    move-object v6, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v7, p1

    iput-object v7, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->arg3:Lcom/android/systemui/touch/TouchInsetManager;

    move-object v0, p3

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->arg0:Landroidx/lifecycle/LifecycleOwner;

    new-instance v8, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x0

    const/16 v9, 0x10

    const/16 v5, 0x10

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v8}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->providesComplicationHostViewProvider:Ljavax/inject/Provider;

    new-instance v8, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    const/4 v4, 0x1

    move-object v0, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/Object;II)V

    invoke-static {v8}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$cascd_ComplicationComponentImpl;->complicationLayoutEngineProvider:Ljavax/inject/Provider;

    return-void
.end method
