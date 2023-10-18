.class public final synthetic Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/input/TouchContextService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/input/TouchContextService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/input/TouchContextService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/input/TouchContextService;

    iget-object p0, p0, Lcom/google/android/systemui/input/TouchContextService;->mDisplayListener:Lcom/google/android/systemui/input/TouchContextService$3;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/input/TouchContextService$3;->onDisplayChanged(I)V

    return-void
.end method
