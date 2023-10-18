.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$settingsListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlertSilenceEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onColumbusEnabledChange(Z)V
    .locals 0

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

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public final onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public final onUseApSensorChange()V
    .locals 0

    return-void
.end method
