.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "systemui_google_columbus_secure_deny_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->updateDenyList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
