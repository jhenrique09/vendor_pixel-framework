.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$userSwitchCallback$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$userSwitchCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    return-void
.end method
