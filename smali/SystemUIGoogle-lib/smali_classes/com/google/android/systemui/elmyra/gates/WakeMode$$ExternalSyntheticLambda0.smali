.class public final synthetic Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/gates/WakeMode;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/gates/WakeMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/WakeMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/WakeMode;

    check-cast p1, Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "assist_gesture_wake_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
