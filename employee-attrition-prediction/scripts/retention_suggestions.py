# retention_suggestions.py

import pandas as pd

def generate_suggestions(df):
    
    
    def suggest(row):
        suggestions = []

        # Only suggest for high attrition risk
        if row['Attrition_Prediction'] == 1:

            # Low satisfaction
            if row['JobSatisfaction'] <= 2:
                suggestions.append("Discuss career goals; explore role change.")

            # Low work-life balance & working overtime
            if row['WorkLifeBalance'] <= 2 and row['OverTime'] == 1:
                suggestions.append("Offer flexible hours or workload adjustment.")

            # Low salary
            if row['MonthlyIncome'] < df['MonthlyIncome'].quantile(0.25):
                suggestions.append("Review compensation package.")

            # High performer with high risk
            if row['PerformanceRating'] >= 4:
                suggestions.append("Consider promotion or recognition incentive.")

            # Far from office
            if row['DistanceFromHome'] > 20:
                suggestions.append("Offer hybrid or remote work options.")

            # Few/no recent trainings
            if row['TrainingTimesLastYear'] < 2:
                suggestions.append("Assign training or mentorship.")

            return " | ".join(suggestions) if suggestions else "Schedule 1:1 discussion"

        else:
            return "Retain current engagement strategy"

    # Apply logic
    df['Retention_Suggestion'] = df.apply(suggest, axis=1)

    return df


# Example usage
if __name__ == "__main__":
    # Load employee data with predictions
    df = pd.read_csv('/workspaces/Advanced-Data-Analyst-Projects/employee-attrition-prediction/data/employee_cleaned.csv')

    # Simulated: model predictions (in practice, load from model)
    import numpy as np
    df['Attrition_Prediction'] = np.random.choice([0, 1], size=len(df), p=[0.85, 0.15])

    # Generate suggestions
    df_with_suggestions = generate_suggestions(df)

    # Save results
    df_with_suggestions.to_csv('/workspaces/Advanced-Data-Analyst-Projects/employee-attrition-prediction/data/retention_actions.csv', index=False)

