
with source as (

    select * from {{ source('raw_aviso', 'forecast_management') }}

),

renamed as (

    select
        key,
        period,
        booking_type,
        closed_deals,
        booked__quota,
        pipeline,
        planny,
        tot_won_and_fcst,
        commit_mgr_quota,
        best_case_total_sum,
        forecast_total_sum,
        commit_total_sum,
        best_case_rep_deals,
        forecast_rep_mgr__quota,
        best_case_rep_mgr__quota,
        commit_rep_deals,
        commit_mgr_deals,
        commit_mgr,
        forecast_rep_deals,
        best_case_mgr,
        best_case_mgr_deals,
        forecast_mgr,
        forecast_mgr_deals

    from source

)

select * from renamed
