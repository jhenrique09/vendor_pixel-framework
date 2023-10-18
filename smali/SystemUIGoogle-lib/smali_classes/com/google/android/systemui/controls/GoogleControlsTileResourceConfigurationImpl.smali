.class public final Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsTileResourceConfiguration;


# instance fields
.field public final controlsComponent:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->controlsComponent:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->controlsComponent:Ldagger/Lazy;

    move-object v0, p0

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-boolean v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    if-nez v0, :cond_0

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, ""

    invoke-direct {p0, v0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getPreferredSelection()Lcom/android/systemui/controls/ui/SelectedItem;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.chromecast.app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTileImageId()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.chromecast.app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0806a7

    goto :goto_0

    :cond_0
    const p0, 0x7f080652

    :goto_0
    return p0
.end method

.method public final getTileTitleId()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.chromecast.app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1303e4

    goto :goto_0

    :cond_0
    const p0, 0x7f1306e8

    :goto_0
    return p0
.end method
