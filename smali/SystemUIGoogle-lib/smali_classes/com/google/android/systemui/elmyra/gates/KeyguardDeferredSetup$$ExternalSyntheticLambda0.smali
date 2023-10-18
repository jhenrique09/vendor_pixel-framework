.class public final synthetic Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    check-cast p1, Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "assist_gesture_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    if-eq p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;->mDeferredSetupComplete:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
