
with source as (

    select * from {{ source('raw_netsuite', 'historic_salary_records_history') }}

),

renamed as (

    select
        bonus_amount_annual,
        date_bonus_depricated,
        date_bonus_effective,
        date_created,
        date_salary_depricated,
        date_salary_effective,
        historic_salary_records_extid,
        historic_salary_records_id,
        is_inactive,
        last_modified_date,
        parent_id,
        salarybonus_history_id,
        salary_amount_annual

    from source

)

select * from renamed
