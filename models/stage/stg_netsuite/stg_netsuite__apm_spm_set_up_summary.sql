
with source as (

    select * from {{ source('raw_netsuite', 'apm_spm_set_up_summary') }}

),

renamed as (

    select
        apm_spm_set_up_summary_extid,
        apm_spm_set_up_summary_id,
        average,
        date_created,
        is_inactive,
        last_modified_date,
        median,
        n_95th_percentile,
        parent_id,
        spm_user_id,
        standard_deviation

    from source

)

select * from renamed
