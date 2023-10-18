.class public final Lcom/google/android/systemui/assist/AssistManagerGoogle$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$1;->this$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->updateOpaEnabledState(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContentObserver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$AssistantContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v2, "assistant"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "assist_long_press_home_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mBroadcastReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver$OpaEnabledBroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->registerEnabledReceiver(I)V

    return-void
.end method
