.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$2;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/LaunchApp;->updateAvailable()V

    return-void
.end method
