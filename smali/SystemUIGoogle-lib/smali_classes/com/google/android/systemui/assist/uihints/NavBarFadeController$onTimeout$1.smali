.class public final Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/NavBarFadeController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/NavBarFadeController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;->this$0:Lcom/google/android/systemui/assist/uihints/NavBarFadeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController$onTimeout$1;->this$0:Lcom/google/android/systemui/assist/uihints/NavBarFadeController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->systemVisible:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->ngaVisible:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NavBarFadeController;->update()V

    return-void
.end method
