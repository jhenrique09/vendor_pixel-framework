.class public final synthetic Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;->mCustomAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method
