.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlertSilenceEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onColumbusEnabledChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->listeners:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->started:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onLowSensitivityChange(Z)V
    .locals 0

    return-void
.end method

.method public final onSelectedActionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUseApSensorChange()V
    .locals 0

    return-void
.end method
