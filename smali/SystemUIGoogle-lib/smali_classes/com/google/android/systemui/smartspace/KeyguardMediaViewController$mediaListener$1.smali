.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1$onPrimaryMetadataOrStateChanged$1;-><init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Landroid/media/MediaMetadata;I)V

    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
