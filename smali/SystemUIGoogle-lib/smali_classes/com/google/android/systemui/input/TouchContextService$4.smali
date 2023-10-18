.class public final Lcom/google/android/systemui/input/TouchContextService$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/input/TouchContextService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$4;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModeChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$4;->this$0:Lcom/google/android/systemui/input/TouchContextService;

    iget v0, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousAudioMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/input/TouchContextService;->mPreviousAudioMode:I

    invoke-static {p0}, Lcom/google/android/systemui/input/TouchContextService;->-$$Nest$mupdateTouchContext(Lcom/google/android/systemui/input/TouchContextService;)V

    return-void
.end method
