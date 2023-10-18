.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$onDismissKeyguardAction$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$onDismissKeyguardAction$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 6

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$onDismissKeyguardAction$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_4

    sget-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    invoke-interface {v2, v4, v1, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, v3, v3}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    sget-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-interface {v2, v4, v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    :cond_4
    :goto_2
    return v1
.end method
